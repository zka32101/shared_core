import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/league_model.dart';

final leagueServiceProvider = Provider<LeagueService>((ref) {
  return LeagueService();
});

final userLeagueProvider = FutureProvider.autoDispose.family<UserLeague?, String>(
  (ref, userId) async {
    final service = ref.watch(leagueServiceProvider);
    return service.getUserLeague(userId);
  },
);

final leagueRankingProvider = FutureProvider.autoDispose.family<LeagueRanking, String>(
  (ref, tier) async {
    final service = ref.watch(leagueServiceProvider);
    return service.getLeagueRanking(tier);
  },
);

final matchmakingProvider = FutureProvider.autoDispose.family<List<String>, String>(
  (ref, userId) async {
    final service = ref.watch(leagueServiceProvider);
    return service.findMatchmakingOpponents(userId);
  },
);

final leagueNotifierProvider = StateNotifierProvider<LeagueNotifier, Map<String, dynamic>>(
  (ref) => LeagueNotifier(ref.watch(leagueServiceProvider)),
);

class LeagueService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  
  /// ユーザーのリーグ情報を取得
  Future<UserLeague?> getUserLeague(String userId) async {
    try {
      final doc = await _firestore
          .collection('leagues')
          .doc('users')
          .collection(userId)
          .doc('current')
          .get();
      
      if (!doc.exists) return null;
      return UserLeague.fromJson(doc.data() as Map<String, dynamic>);
    } catch (e) {
      print('Error fetching user league: $e');
      return null;
    }
  }
  
  /// ティア内のランキングを取得
  Future<LeagueRanking> getLeagueRanking(String tier) async {
    try {
      final doc = await _firestore
          .collection('leagues')
          .doc('rankings')
          .collection(tier)
          .doc('current')
          .get();
      
      if (!doc.exists) {
        return LeagueRanking(
          tier: tier,
          rankings: [],
          updatedAt: DateTime.now(),
        );
      }
      return LeagueRanking.fromJson(doc.data() as Map<String, dynamic>);
    } catch (e) {
      print('Error fetching league ranking: $e');
      return LeagueRanking(
        tier: tier,
        rankings: [],
        updatedAt: DateTime.now(),
      );
    }
  }
  
  /// マッチメイキング対象者を検索
  Future<List<String>> findMatchmakingOpponents(String userId) async {
    try {
      final userLeague = await getUserLeague(userId);
      if (userLeague == null) return [];
      
      // 同じティア・ランクの±50ポイント内プレイヤーを検索
      final ranking = await getLeagueRanking(userLeague.tier);
      final opponents = ranking.rankings
          .where((r) => 
              r.userId != userId &&
              (r.leaguePoints - userLeague.leaguePoints).abs() <= 50)
          .map((r) => r.userId)
          .take(5)
          .toList();
      
      return opponents;
    } catch (e) {
      print('Error finding opponents: $e');
      return [];
    }
  }
  
  /// マッチ結果を処理
  Future<void> processMatchResult(LeagueMatch match) async {
    try {
      await _firestore.runTransaction((transaction) async {
        // 試合を記録
        final matchRef = _firestore
            .collection('leagues')
            .doc('matches')
            .collection(match.createdAt.year.toString())
            .doc(match.matchId);
        transaction.set(matchRef, match.toJson());
        
        // Player 1 の情報を更新
        final p1Ref = _firestore
            .collection('leagues')
            .doc('users')
            .collection(match.player1Id)
            .doc('current');
        final p1Doc = await transaction.get(p1Ref);
        final p1League = p1Doc.exists
            ? UserLeague.fromJson(p1Doc.data() as Map<String, dynamic>)
            : _createInitialLeague(match.player1Id);
        
        final updatedP1 = _updateLeagueAfterMatch(
          p1League,
          match.player1PointsChange,
          match.winnerId == match.player1Id,
        );
        transaction.set(p1Ref, updatedP1.toJson());
        
        // Player 2 の情報を更新
        final p2Ref = _firestore
            .collection('leagues')
            .doc('users')
            .collection(match.player2Id)
            .doc('current');
        final p2Doc = await transaction.get(p2Ref);
        final p2League = p2Doc.exists
            ? UserLeague.fromJson(p2Doc.data() as Map<String, dynamic>)
            : _createInitialLeague(match.player2Id);
        
        final updatedP2 = _updateLeagueAfterMatch(
          p2League,
          match.player2PointsChange,
          match.winnerId == match.player2Id,
        );
        transaction.set(p2Ref, updatedP2.toJson());
        
        // ランキングを更新
        await _updateLeagueRankings(transaction, match.appId);
      });
    } catch (e) {
      print('Error processing match result: $e');
      rethrow;
    }
  }
  
  /// リーグ情報を更新（マッチ後）
  UserLeague _updateLeagueAfterMatch(
    UserLeague league,
    int pointsChange,
    bool isWinner,
  ) {
    int newPoints = (league.leaguePoints + pointsChange).clamp(0, 100);
    int newConsecutiveWins = isWinner ? league.consecutiveWins + 1 : 0;
    
    // 昇格判定
    bool wasPromo = league.isPromo;
    int newPromoProgress = league.promoProgress;
    LeagueTier newTier = league.tier;
    LeagueRank newRank = league.rank;
    
    if (wasPromo && isWinner) {
      newPromoProgress++;
      if (newPromoProgress >= 3) {
        // 昇格確定
        newPromoProgress = 0;
        final rankIndex = _getRankIndex(league.rank);
        if (rankIndex > 0) {
          newRank = _getRankByIndex(rankIndex - 1);
        } else {
          newRank = LeagueRank.iv;
          newTier = _getTierByIndex(_getTierIndex(league.tier) + 1);
        }
      }
    } else if (!wasPromo && !isWinner && newConsecutiveWins == 0) {
      // 降格判定
      if (newPoints == 0) {
        final rankIndex = _getRankIndex(league.rank);
        if (rankIndex < 3) {
          newRank = _getRankByIndex(rankIndex + 1);
        } else {
          newRank = LeagueRank.iv;
          newTier = _getTierByIndex(_getTierIndex(league.tier) - 1);
        }
      }
    }
    
    return league.copyWith(
      leaguePoints: newPoints,
      totalRankPoints: league.totalRankPoints + (isWinner ? 50 : -10),
      wins: league.wins + (isWinner ? 1 : 0),
      losses: league.losses + (isWinner ? 0 : 1),
      winRate: _calculateWinRate(league.wins + (isWinner ? 1 : 0), league.losses + (isWinner ? 0 : 1)),
      consecutiveWins: newConsecutiveWins,
      lastMatchAt: DateTime.now(),
      updatedAt: DateTime.now(),
      tier: newTier,
      rank: newRank,
      isPromo: newPromoProgress > 0,
      promoProgress: newPromoProgress,
    );
  }
  
  /// ランキングを更新
  Future<void> _updateLeagueRankings(
    Transaction transaction,
    String appId,
  ) async {
    final allUsersRef = _firestore
        .collection('leagues')
        .doc('users');
    
    // 全ティア・ランク別にランキングを再集計
    final tiers = [
      LeagueTier.bronze,
      LeagueTier.silver,
      LeagueTier.gold,
      LeagueTier.platinum,
      LeagueTier.diamond,
      LeagueTier.master,
    ];
    
    for (final tier in tiers) {
      final tierStr = _tierToString(tier);
      final usersSnapshot = await allUsersRef
          .collectionGroup('current')
          .where('tier', isEqualTo: tierStr)
          .orderBy('leaguePoints', descending: true)
          .limit(100)
          .get();
      
      final rankings = usersSnapshot.docs
          .asMap()
          .entries
          .map((entry) {
        final doc = entry.value;
        final league = UserLeague.fromJson(doc.data());
        return LeagueRankingEntry(
          position: entry.key + 1,
          userId: league.userId,
          userName: 'Player ${league.userId.substring(0, 8)}', // Placeholder
          rank: league.rank,
          leaguePoints: league.leaguePoints,
          totalRankPoints: league.totalRankPoints,
          wins: league.wins,
          winRate: league.winRate,
        );
      }).toList();
      
      final rankingRef = _firestore
          .collection('leagues')
          .doc('rankings')
          .collection(tierStr)
          .doc('current');
      
      transaction.set(
        rankingRef,
        LeagueRanking(
          tier: tierStr,
          rankings: rankings,
          updatedAt: DateTime.now(),
        ).toJson(),
      );
    }
  }
  
  /// 初期リーグ情報を作成
  UserLeague _createInitialLeague(String userId) {
    return UserLeague(
      userId: userId,
      tier: LeagueTier.bronze,
      rank: LeagueRank.iv,
      leaguePoints: 0,
      totalRankPoints: 0,
      wins: 0,
      losses: 0,
      winRate: 0.0,
      promotedAt: null,
      demotedAt: null,
      isPromo: false,
      promoProgress: 0,
      consecutiveWins: 0,
      lastMatchAt: null,
      updatedAt: DateTime.now(),
    );
  }
  
  /// 勝率を計算
  double _calculateWinRate(int wins, int losses) {
    final total = wins + losses;
    if (total == 0) return 0.0;
    return (wins / total * 100).clamp(0.0, 100.0);
  }
  
  /// ランクをインデックスに変換
  int _getRankIndex(LeagueRank rank) {
    switch (rank) {
      case LeagueRank.iv:
        return 0;
      case LeagueRank.iii:
        return 1;
      case LeagueRank.ii:
        return 2;
      case LeagueRank.i:
        return 3;
    }
  }
  
  /// インデックスからランクを取得
  LeagueRank _getRankByIndex(int index) {
    switch (index) {
      case 0:
        return LeagueRank.iv;
      case 1:
        return LeagueRank.iii;
      case 2:
        return LeagueRank.ii;
      case 3:
      default:
        return LeagueRank.i;
    }
  }
  
  /// ティアをインデックスに変換
  int _getTierIndex(LeagueTier tier) {
    switch (tier) {
      case LeagueTier.bronze:
        return 0;
      case LeagueTier.silver:
        return 1;
      case LeagueTier.gold:
        return 2;
      case LeagueTier.platinum:
        return 3;
      case LeagueTier.diamond:
        return 4;
      case LeagueTier.master:
        return 5;
    }
  }
  
  /// インデックスからティアを取得
  LeagueTier _getTierByIndex(int index) {
    switch (index.clamp(0, 5)) {
      case 0:
        return LeagueTier.bronze;
      case 1:
        return LeagueTier.silver;
      case 2:
        return LeagueTier.gold;
      case 3:
        return LeagueTier.platinum;
      case 4:
        return LeagueTier.diamond;
      case 5:
      default:
        return LeagueTier.master;
    }
  }
  
  /// ティアを文字列に変換
  String _tierToString(LeagueTier tier) {
    switch (tier) {
      case LeagueTier.bronze:
        return 'bronze';
      case LeagueTier.silver:
        return 'silver';
      case LeagueTier.gold:
        return 'gold';
      case LeagueTier.platinum:
        return 'platinum';
      case LeagueTier.diamond:
        return 'diamond';
      case LeagueTier.master:
        return 'master';
    }
  }
}

class LeagueNotifier extends StateNotifier<Map<String, dynamic>> {
  final LeagueService _service;
  
  LeagueNotifier(this._service) : super({});
  
  /// ユーザーリーグを取得
  Future<UserLeague?> getUserLeague(String userId) async {
    return _service.getUserLeague(userId);
  }
  
  /// ティアランキングを取得
  Future<LeagueRanking> getLeagueRanking(String tier) async {
    return _service.getLeagueRanking(tier);
  }
  
  /// マッチメイキング対手を検索
  Future<List<String>> findOpponents(String userId) async {
    return _service.findMatchmakingOpponents(userId);
  }
  
  /// マッチ結果を処理
  Future<void> processMatchResult(LeagueMatch match) async {
    state = {...state, 'isProcessing': true};
    try {
      await _service.processMatchResult(match);
      state = {...state, 'isProcessing': false, 'lastMatch': match};
    } catch (e) {
      state = {...state, 'isProcessing': false, 'error': e.toString()};
      rethrow;
    }
  }
}
