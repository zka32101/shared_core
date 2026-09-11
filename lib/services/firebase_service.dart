import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shared_preferences/shared_preferences.dart';

const _userIdKey = 'firebase_uid';

class FirebaseService {
  static final FirebaseAuth _auth = FirebaseAuth.instance;
  static final FirebaseFirestore _firestore = FirebaseFirestore.instance;

  static Future<String?> signInAnonymously() async {
    try {
      final current = _auth.currentUser;
      if (current != null) return current.uid;

      final cred = await _auth.signInAnonymously();
      final uid = cred.user?.uid;
      if (uid != null) {
        final prefs = await SharedPreferences.getInstance();
        await prefs.setString(_userIdKey, uid);
      }
      return uid;
    } catch (e) {
      return _getLocalUserId();
    }
  }

  static Future<String> getUserId() async {
    final uid = _auth.currentUser?.uid;
    if (uid != null) return uid;
    return _getLocalUserId();
  }

  static Future<String> _getLocalUserId() async {
    final prefs = await SharedPreferences.getInstance();
    var id = prefs.getString(_userIdKey);
    if (id == null) {
      id = 'local_${DateTime.now().millisecondsSinceEpoch}';
      await prefs.setString(_userIdKey, id);
    }
    return id;
  }

  static User? get currentUser => _auth.currentUser;

  static Stream<User?> get authStateChanges => _auth.authStateChanges();

  /// Phase 4.12: 学習時間を記録（Firestore users/{userId} に追加）
  static Future<void> recordLearningSession(
    String userId,
    int durationMinutes,
  ) async {
    try {
      await _firestore.collection('users').doc(userId).update({
        'totalLearningMinutes': FieldValue.increment(durationMinutes),
        'lastActivityAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      print('Error recording learning session: $e');
    }
  }

  /// Phase 4.13: 連続学習日数を更新
  static Future<void> updateStreak(String userId) async {
    try {
      final userDoc = await _firestore.collection('users').doc(userId).get();
      final now = DateTime.now();
      final today = DateTime(now.year, now.month, now.day);

      final data = userDoc.data() as Map<String, dynamic>?;
      final lastActivityAt = data?['lastActivityAt'] as Timestamp?;
      final currentStreak = data?['currentStreak'] as int? ?? 0;
      final longestStreak = data?['longestStreak'] as int? ?? 0;

      if (lastActivityAt != null) {
        final lastDay = DateTime(
          lastActivityAt.toDate().year,
          lastActivityAt.toDate().month,
          lastActivityAt.toDate().day,
        );

        int newStreak = currentStreak;
        if (lastDay.isBefore(today)) {
          // 前回の活動が過去のため、ストリークをインクリメント
          newStreak = currentStreak + 1;
        }

        final newLongest = newStreak > longestStreak ? newStreak : longestStreak;

        await _firestore.collection('users').doc(userId).update({
          'currentStreak': newStreak,
          'longestStreak': newLongest,
          'lastActivityAt': FieldValue.serverTimestamp(),
        });
      }
    } catch (e) {
      print('Error updating streak: $e');
    }
  }

  /// Phase 4.14: マッチング申し込み
  static Future<void> requestMatch(
    String userId,
    String subject,
    int grade,
  ) async {
    try {
      await _firestore
          .collection('matchmaking')
          .doc(subject)
          .collection('pending_requests')
          .doc(userId)
          .set({
        'userId': userId,
        'subject': subject,
        'grade': grade,
        'requestedAt': FieldValue.serverTimestamp(),
      });
    } catch (e) {
      print('Error requesting match: $e');
    }
  }

  /// Phase 4.14: バトル結果を記録
  static Future<void> recordBattleResult({
    required String winnerId,
    required String loserId,
    required String subject,
    bool isDraw = false,
  }) async {
    try {
      // ウィナーのレーティング更新（+10）
      await _firestore.collection('users').doc(winnerId).update({
        'rating': FieldValue.increment(isDraw ? 0 : 10),
        'totalMatches': FieldValue.increment(1),
        'winCount': FieldValue.increment(isDraw ? 0 : 1),
      });

      // ルーザーのレーティング更新（-5）
      await _firestore.collection('users').doc(loserId).update({
        'rating': FieldValue.increment(isDraw ? 0 : -5),
        'totalMatches': FieldValue.increment(1),
      });

      // ランキング エントリを更新
      final winnerRating =
          (await _firestore.collection('users').doc(winnerId).get())
                  .get('rating') as int? ??
              1000;
      final loserRating =
          (await _firestore.collection('users').doc(loserId).get())
                  .get('rating') as int? ??
              1000;

      await _firestore
          .collection('leaderboards')
          .doc(subject)
          .collection('entries')
          .doc(winnerId)
          .set({
        'userId': winnerId,
        'rating': winnerRating,
        'updatedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));

      await _firestore
          .collection('leaderboards')
          .doc(subject)
          .collection('entries')
          .doc(loserId)
          .set({
        'userId': loserId,
        'rating': loserRating,
        'updatedAt': FieldValue.serverTimestamp(),
      }, SetOptions(merge: true));
    } catch (e) {
      print('Error recording battle result: $e');
    }
  }

  /// Phase 4.14: グローバルランキングを取得（全教科合計）
  static Future<List<Map<String, dynamic>>> getGlobalLeaderboard({
    int limit = 100,
  }) async {
    try {
      final snapshot = await _firestore
          .collection('leaderboards')
          .doc('global')
          .collection('entries')
          .orderBy('rating', descending: true)
          .limit(limit)
          .get();

      return snapshot.docs.map((doc) => doc.data()).toList();
    } catch (e) {
      print('Error fetching global leaderboard: $e');
      return [];
    }
  }

  /// Phase 4.14: 教科別ランキングを取得
  static Future<List<Map<String, dynamic>>> getSubjectLeaderboard(
    String subject, {
    int limit = 100,
  }) async {
    try {
      final snapshot = await _firestore
          .collection('leaderboards')
          .doc(subject)
          .collection('entries')
          .orderBy('rating', descending: true)
          .limit(limit)
          .get();

      return snapshot.docs.map((doc) => doc.data()).toList();
    } catch (e) {
      print('Error fetching subject leaderboard: $e');
      return [];
    }
  }
}
