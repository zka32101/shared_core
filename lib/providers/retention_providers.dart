import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'dart:convert' as convert;
import '../models/retention_model.dart';

/// RetentionConfig を RemoteConfig から取得
final retentionConfigProvider =
    FutureProvider<RetentionConfig>((ref) async {
  try {
    final remoteConfig = FirebaseRemoteConfig.instance;
    await remoteConfig.fetchAndActivate();

    final configJson = remoteConfig.getString('retention_config');
    if (configJson.isEmpty) {
      // デフォルト設定を返す
      return const RetentionConfig(
        dailyMissionCount: 3,
        streakCoinMultiplier: 10,
        maxStreakBonusPerDay: 100,
        weeklyBonusCoins: {
          1: 50,
          2: 50,
          3: 75,
          4: 50,
          5: 50,
          6: 100,
          7: 150,
        },
        streakMilestones: [7, 30, 100, 365],
      );
    }

    final decoded = convert.jsonDecode(configJson) as Map<String, dynamic>;
    return RetentionConfig.fromJson(decoded);
  } catch (e) {
    debugPrint('Error fetching retention config: $e');
    // フォールバック: デフォルト設定
    return const RetentionConfig(
      dailyMissionCount: 3,
      streakCoinMultiplier: 10,
      maxStreakBonusPerDay: 100,
      weeklyBonusCoins: {
        1: 50,
        2: 50,
        3: 75,
        4: 50,
        5: 50,
        6: 100,
        7: 150,
      },
      streakMilestones: [7, 30, 100, 365],
    );
  }
});

/// 本日のデイリーミッション取得
final todayMissionsProvider = FutureProvider.autoDispose<List<DailyMission>>((ref) async {
  try {
    final auth = FirebaseAuth.instance;
    final userId = auth.currentUser?.uid ?? '';
    if (userId.isEmpty) {
      return [];
    }

    final today = DateTime.now();
    final todayKey =
        '${today.year}${today.month.toString().padLeft(2, '0')}${today.day.toString().padLeft(2, '0')}';

    final doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('daily_missions')
        .doc('daily_mission_$todayKey')
        .get();

    if (doc.exists) {
      final data = doc.data() as Map<String, dynamic>;
      final missions = (data['missions'] as List? ?? [])
          .map((m) => DailyMission.fromJson(m as Map<String, dynamic>))
          .toList();
      return missions;
    }
    return [];
  } catch (e) {
    debugPrint('Error fetching today missions: $e');
    return [];
  }
});

/// ストリークデータ取得
final streakDataProvider = FutureProvider.autoDispose<StreakData>((ref) async {
  try {
    final auth = FirebaseAuth.instance;
    final userId = auth.currentUser?.uid ?? '';
    if (userId.isEmpty) {
      return const StreakData(
        userId: '',
        currentStreak: 0,
        longestStreak: 0,
        lastActivityAt: DateTime.fromMillisecondsSinceEpoch(0),
        totalStreakCoins: 0,
        streakBadges: [],
      );
    }

    final doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('progress')
        .doc('streak_data')
        .get();

    if (doc.exists) {
      return StreakData.fromJson(doc.data() as Map<String, dynamic>);
    }

    return const StreakData(
      userId: '',
      currentStreak: 0,
      longestStreak: 0,
      lastActivityAt: DateTime.fromMillisecondsSinceEpoch(0),
      totalStreakCoins: 0,
      streakBadges: [],
    );
  } catch (e) {
    debugPrint('Error fetching streak data: $e');
    return const StreakData(
      userId: '',
      currentStreak: 0,
      longestStreak: 0,
      lastActivityAt: DateTime.fromMillisecondsSinceEpoch(0),
      totalStreakCoins: 0,
      streakBadges: [],
    );
  }
});

/// 週間ボーナス進捗取得
final weeklyBonusProgressProvider =
    FutureProvider.autoDispose<WeeklyBonusProgress>((ref) async {
  try {
    final auth = FirebaseAuth.instance;
    final userId = auth.currentUser?.uid ?? '';
    if (userId.isEmpty) {
      return const WeeklyBonusProgress(
        userId: '',
        weekNumber: 0,
        bonuses: [],
        completedDays: 0,
        startedAt: DateTime.fromMillisecondsSinceEpoch(0),
      );
    }

    final now = DateTime.now();
    final yearStart = DateTime(now.year);
    final weekNumber =
        ((now.millisecondsSinceEpoch - yearStart.millisecondsSinceEpoch) ~/
            (7 * 24 * 60 * 60 * 1000)) +
        1;

    final doc = await FirebaseFirestore.instance
        .collection('users')
        .doc(userId)
        .collection('retention')
        .doc('weekly_bonus_w$weekNumber')
        .get();

    if (doc.exists) {
      return WeeklyBonusProgress.fromJson(doc.data() as Map<String, dynamic>);
    }

    return const WeeklyBonusProgress(
      userId: '',
      weekNumber: 0,
      bonuses: [],
      completedDays: 0,
      startedAt: DateTime.fromMillisecondsSinceEpoch(0),
    );
  } catch (e) {
    debugPrint('Error fetching weekly bonus progress: $e');
    return const WeeklyBonusProgress(
      userId: '',
      weekNumber: 0,
      bonuses: [],
      completedDays: 0,
      startedAt: DateTime.fromMillisecondsSinceEpoch(0),
    );
  }
});
