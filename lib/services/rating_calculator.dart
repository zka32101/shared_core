import 'dart:math';

import '../models/multiplayer_model.dart';

/// レーティング計算サービス（Elo & Glicko-2）。
///
/// 小学コレシリーズ全体で統一されたレーティング計算ロジック。
/// 各アプリはこのサービスを通じてユーザーのレーティングを更新する。
class RatingCalculator {
  // Eloレーティング計算時の K値（変動係数）
  static const double _defaultKFactor = 32.0;

  // Glicko-2の定数
  static const double _glicko2Tau = 0.5; // volatilityの減衰定数
  static const double _glicko2ScalingFactor = 173.7178; // Glicko-1との互換性

  /// Eloレーティングで相手に対する期待勝率を計算。
  ///
  /// 返り値: 0.0 - 1.0
  static double _expectedScore(double playerRating, double opponentRating) {
    return 1.0 / (1.0 + pow(10, (opponentRating - playerRating) / 400));
  }

  /// Eloレーティング計算：勝敗結果からレート変動を計算。
  ///
  /// ```dart
  /// // プレイヤーが勝った場合の変動：
  /// final change = RatingCalculator.calculateEloChange(
  ///   playerRating: 1600,
  ///   opponentRating: 1500,
  ///   playerWon: true,
  /// );
  /// // 例: +5.7 程度
  /// ```
  static double calculateEloChange(
    double playerRating,
    double opponentRating,
    bool playerWon, {
    double kFactor = _defaultKFactor,
  }) {
    final expectedScore = _expectedScore(playerRating, opponentRating);
    final actualScore = playerWon ? 1.0 : 0.0;
    return kFactor * (actualScore - expectedScore);
  }

  /// Eloレーティング計算：複数の試合結果からレート更新。
  ///
  /// 通常 [calculateEloChange] を複数回呼び出して集計するが、
  /// 一括処理する場合はこのメソッドを使う。
  static UserRating updateEloFromMatches(
    UserRating player,
    List<({double opponentRating, bool playerWon})> results, {
    double kFactor = _defaultKFactor,
  }) {
    if (results.isEmpty) return player;

    double totalChange = 0;
    for (final result in results) {
      totalChange += calculateEloChange(
        player.rating,
        result.opponentRating,
        result.playerWon,
        kFactor: kFactor,
      );
    }

    final newRating = (player.rating + totalChange).clamp(1400, 2800);
    return player.copyWith(
      rating: newRating,
      winCount: player.winCount + results.where((r) => r.playerWon).length,
      totalMatches: player.totalMatches + results.length,
      lastUpdatedAt: DateTime.now(),
    );
  }

  /// Glicko-2レーティング計算：単一の試合からのレート更新。
  ///
  /// Glicko-2は時間経過による信頼度減衰を考慮するため、
  /// [daysSinceLastMatch] を指定する必要がある。
  static UserRating updateGlicko2(
    UserRating player,
    double opponentRating,
    double opponentRatingDeviation,
    bool playerWon, {
    int daysSinceLastMatch = 0,
  }) {
    // 信頼度(RD)の時間経過による減衰
    final rd = _decayRatingDeviation(player.ratingDeviation, daysSinceLastMatch);

    // 相手のレート情報から g(RD') を計算
    final gValue = _glicko2_g(opponentRatingDeviation);

    // Expected score
    final expectedScore = _expectedScore(player.rating, opponentRating);

    // 実際の得点（1: 勝, 0: 敗）
    final actualScore = playerWon ? 1.0 : 0.0;

    // d² を計算
    final dSquared = 1.0 / (pow(_glicko2ScalingFactor, 2) * gValue * gValue * expectedScore * (1 - expectedScore));

    // 新しいvolatility を計算
    final newVolatility = _glicko2_volatility(
      player.volatility,
      rd,
      dSquared,
      actualScore - expectedScore,
    );

    // 新しいRDを計算
    final newRD = _glicko2_newRatingDeviation(newVolatility, rd, dSquared);

    // 新しいレートを計算
    const k = 1.0 / _glicko2ScalingFactor;
    final newRating = player.rating +
        k * gValue * (actualScore - expectedScore);

    return player.copyWith(
      rating: newRating.clamp(1400, 2800),
      ratingDeviation: newRD,
      volatility: newVolatility,
      winCount: player.winCount + (playerWon ? 1 : 0),
      totalMatches: player.totalMatches + 1,
      lastUpdatedAt: DateTime.now(),
    );
  }

  /// Glicko-2レーティング計算：複数試合の一括更新。
  ///
  /// [updateGlicko2] より計算効率が良い。
  static UserRating updateGlicko2Batch(
    UserRating player,
    List<({double opponentRating, double opponentRatingDeviation, bool playerWon})> results, {
    int daysSinceLastMatch = 0,
  }) {
    if (results.isEmpty) return player;

    // 信頼度(RD)の時間経過による減衰
    final rd = _decayRatingDeviation(player.ratingDeviation, daysSinceLastMatch);

    double sumGValue2ExpectedScore2 = 0;
    double sumGValueDiff = 0;
    int winCount = 0;

    for (final result in results) {
      final gValue = _glicko2_g(result.opponentRatingDeviation);
      final expectedScore = _expectedScore(player.rating, result.opponentRating);
      final actualScore = result.playerWon ? 1.0 : 0.0;

      sumGValue2ExpectedScore2 += gValue * gValue * expectedScore * (1 - expectedScore);
      sumGValueDiff += gValue * (actualScore - expectedScore);

      if (result.playerWon) winCount++;
    }

    final dSquared = 1.0 / (pow(_glicko2ScalingFactor, 2) * sumGValue2ExpectedScore2);

    // 新しいvolatility（複数試合版）
    final newVolatility = _glicko2_volatility(
      player.volatility,
      rd,
      dSquared,
      sumGValueDiff / sumGValue2ExpectedScore2,
    );

    // 新しいRD
    final newRD = _glicko2_newRatingDeviation(newVolatility, rd, dSquared);

    // 新しいレート
    const k = 1.0 / _glicko2ScalingFactor;
    final newRating = player.rating + k * sumGValueDiff;

    return player.copyWith(
      rating: newRating.clamp(1400, 2800),
      ratingDeviation: newRD,
      volatility: newVolatility,
      winCount: player.winCount + winCount,
      totalMatches: player.totalMatches + results.length,
      lastUpdatedAt: DateTime.now(),
    );
  }

  /// RD（信頼度）の時間減衰。日数が経つほどRDが増加（信頼度低下）。
  static double _decayRatingDeviation(double currentRD, int daysSince) {
    if (daysSince == 0) return currentRD;
    final c = 50.0; // 減衰速度の定数
    final decayed = sqrt(currentRD * currentRD + c * c * daysSince);
    return decayed.clamp(30, 350); // 最小値30、最大値350
  }

  /// Glicko-2の g(RD') 関数。
  static double _glicko2_g(double rd) {
    final x = -pow(_glicko2ScalingFactor, 2) * rd * rd / (6 * pi * pi);
    return sin(pi / (2 * _glicko2ScalingFactor) * sqrt(exp(x)));
  }

  /// Glicko-2の新しいvolatility計算（複雑な非線形方程式を反復法で解く）。
  static double _glicko2_volatility(
    double prevVolatility,
    double rd,
    double dSquared,
    double m,
  ) {
    const tau = _glicko2Tau;
    final a = log(prevVolatility * prevVolatility);
    final b = _glicko2_getB(a, dSquared, m, rd, tau);
    final x = _glicko2_getX(a, b, dSquared, m, rd, tau);

    final volatilitySquared = exp(x);
    return sqrt(volatilitySquared);
  }

  static double _glicko2_getB(double a, double dSquared, double m, double rd, double tau) {
    const tau2 = _glicko2Tau;
    double left = a;
    double right = a;

    while (right - left > 0.0001) {
      right += 1;
    }
    while (right - left > 0.0001) {
      final mid = (left + right) / 2;
      if (_glicko2_f(mid, a, dSquared, m, rd, tau2) < 0) {
        left = mid;
      } else {
        right = mid;
      }
    }

    return (left + right) / 2;
  }

  static double _glicko2_getX(double a, double b, double dSquared, double m, double rd, double tau) {
    return a + (b - a) / (1 + exp((b - a) / 2));
  }

  static double _glicko2_f(double x, double a, double dSquared, double m, double rd, double tau) {
    const tau2 = _glicko2Tau;
    return (exp(x) * (m * m - 1 / dSquared - exp(x))) / (2 * (rd * rd + 1 / dSquared + exp(x)) * (rd * rd + 1 / dSquared + exp(x))) -
        (x - a) / (tau2 * tau2);
  }

  /// Glicko-2の新しいRD計算。
  static double _glicko2_newRatingDeviation(double newVolatility, double rd, double dSquared) {
    final newRDSquared = 1 / (1 / (rd * rd + newVolatility * newVolatility) + 1 / dSquared);
    return sqrt(newRDSquared);
  }

  /// ランキング順位の計算（同率対応）。
  ///
  /// レート値が同じプレイヤーは同順位。
  static List<(int rank, String userId)> calculateRanks(List<(String userId, double rating)> entries) {
    // レートでソート（降順）
    final sorted = [...entries]..sort((a, b) => b.$2.compareTo(a.$2));

    final result = <(int rank, String userId)>[];
    int currentRank = 1;
    double? lastRating;

    for (final (userId, rating) in sorted) {
      if (lastRating != null && rating < lastRating) {
        currentRank = result.length + 1;
      }
      result.add((currentRank, userId));
      lastRating = rating;
    }

    return result;
  }
}
