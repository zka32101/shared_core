import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:shared_core/shared_core.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  worldPortTests();
  group('SmartNotificationPlanner', () {
    test('履歴が少ないときは既定の17時', () {
      expect(SmartNotificationPlanner.recommendHour(List.filled(24, 0)), 17);
    });

    test('活動の多い時間帯を選び、夜間は避ける', () {
      final h = List<int>.filled(24, 0);
      h[18] = 10;
      h[23] = 30; // 夜間は除外される
      expect(SmartNotificationPlanner.recommendHour(h), 18);
    });

    test('勉強時間帯の範囲内に収める', () {
      final h = List<int>.filled(24, 0);
      h[8] = 20;
      expect(
          SmartNotificationPlanner.recommendHour(h, window: StudyWindow.evening),
          inInclusiveRange(18, 19));
    });

    test('文面: 久しぶり > 復習 > 連続 > 通常', () {
      final h = List<int>.filled(24, 0);
      String reason(NotificationContext c) =>
          SmartNotificationPlanner.plan(histogram: h, context: c).reason;
      expect(reason(const NotificationContext(daysAway: 4, dueReviewCount: 3)), 'comeback');
      expect(reason(const NotificationContext(dueReviewCount: 3, currentStreak: 5)), 'review');
      expect(reason(const NotificationContext(currentStreak: 5)), 'streak');
      expect(reason(const NotificationContext()), 'daily');
    });

    test('今日学習済みなら明日から', () {
      final p = SmartNotificationPlanner.plan(
          histogram: List.filled(24, 0),
          context: const NotificationContext(doneToday: true));
      final now = DateTime(2026, 10, 29, 10);
      expect(SmartReminderScheduler.nextFireTime(p, now), DateTime(2026, 10, 30, 17));
    });
  });

  group('SpacedReview', () {
    final today = DateTime(2026, 10, 29);
    test('不正解で翌日、正解で間隔が延び、最後まで正解で卒業', () {
      var item = SpacedReview.afterAnswer(id: 'q', correct: false, today: today)!;
      expect(item.dueDate, '2026-10-30');
      item = SpacedReview.afterAnswer(id: 'q', correct: true, today: today, current: item)!;
      expect(item.box, 1);
      expect(item.dueDate, '2026-10-31');
      for (var i = 0; i < kReviewIntervals.length - 2; i++) {
        item = SpacedReview.afterAnswer(id: 'q', correct: true, today: today, current: item)!;
      }
      expect(SpacedReview.afterAnswer(id: 'q', correct: true, today: today, current: item), isNull);
    });

    test('未登録の正解はキューに入らない', () {
      expect(SpacedReview.afterAnswer(id: 'q', correct: true, today: today), isNull);
    });
  });

  group('Collection', () {
    test('47都道府県が8地方に漏れなく入っている', () {
      expect(kPrefectureCollection.allItemIds.length, 47);
      expect(kPrefectureCollection.allItemIds.toSet().length, 47);
      expect(kPrefectureCollection.groups.length, 8);
    });

    test('地方コンプリートと全国コンプリートのマイルストーン', () {
      final hokkaido = {prefectureId(1)};
      final m = newMilestones(kPrefectureCollection, hokkaido, {});
      expect(m.map((e) => e.id), ['prefecture:group:hokkaido']);
      expect(newMilestones(kPrefectureCollection, hokkaido, {'prefecture:group:hokkaido'}), isEmpty);
      final all = kPrefectureCollection.allItemIds.toSet();
      expect(newMilestones(kPrefectureCollection, all, {}).last.id, 'prefecture:complete');
    });
  });

  group('ParentReportBuilder', () {
    test('学習なしと学習ありの文面', () {
      final none = ParentReportBuilder.build(const WeeklyLearningSummary(
          totalMinutes: 0, activeDays: 0, quizzes: 0, accuracy: 0));
      expect(none.body, contains('まだ学習していません'));
      final r = ParentReportBuilder.build(const WeeklyLearningSummary(
          totalMinutes: 60, activeDays: 5, quizzes: 40, accuracy: 82.4,
          currentStreak: 5, previousWeekMinutes: 40));
      expect(r.body, contains('5日'));
      expect(r.body, contains('82%'));
      expect(r.body, contains('20分アップ'));
    });
  });

  group('RetentionKpi', () {
    final today = DateTime(2026, 10, 29);
    test('D1/D7 継続率', () {
      final users = [
        UserActivity(DateTime(2026, 10, 20), {'2026-10-21', '2026-10-27'}),
        UserActivity(DateTime(2026, 10, 20), {'2026-10-21'}),
        UserActivity(DateTime(2026, 10, 29), {}), // まだ1日経っていない
      ];
      expect(RetentionKpi.dayNRetention(users, 1, today), 1.0);
      expect(RetentionKpi.dayNRetention(users, 7, today), 0.5);
      expect(RetentionKpi.dayNRetention(users, 30, today), isNull);
    });

    test('連続日数・離脱リスク', () {
      final keys = {'2026-10-27', '2026-10-28'};
      expect(RetentionKpi.currentStreak(keys, today), 2);
      expect(RetentionKpi.isChurnRisk(keys, today), isFalse);
      expect(RetentionKpi.isChurnRisk(keys, DateTime(2026, 11, 2)), isTrue);
      expect(RetentionKpi.activeDaysLast7(keys, today), 2);
    });
  });

  group('Experiments', () {
    test('バリアント対応', () {
      expect(RetentionExperiments.toneFor('control'), NotificationTone.standard);
      expect(RetentionExperiments.toneFor('variant_b'), NotificationTone.playful);
      expect(RetentionExperiments.rewardMultiplierFor('variant_b'), 1.5);
    });
  });

  group('Providers', () {
    setUp(() => SharedPreferences.setMockInitialValues({}));

    test('オンボーディング: 日数に応じて受け取れ、コインが加算される', () async {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      await c.read(onboardingProvider.notifier).load(now: DateTime(2026, 10, 1));
      expect(c.read(onboardingProvider).claimable.map((r) => r.day), [1]);
      // 3日目に再読み込み → 1〜3 日目が受け取れる
      await c.read(onboardingProvider.notifier).load(now: DateTime(2026, 10, 3));
      expect(c.read(onboardingProvider).claimable.length, 3);
      final r = await c.read(onboardingProvider.notifier).claim(3, multiplier: 2);
      expect(r?.coins, 150);
      expect(c.read(coinProvider).totalCoins, 300);
      expect(await c.read(onboardingProvider.notifier).claim(3), isNull);
    });

    test('復習キュー: 不正解で登録され期限で出題される', () async {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final n = c.read(reviewQueueProvider.notifier);
      final day = DateTime(2026, 10, 29);
      await n.recordAnswer('q1', false, now: day);
      expect(n.dueIds(now: day), isEmpty);
      expect(n.dueIds(now: DateTime(2026, 10, 30)), ['q1']);
    });

    test('コレクション: 地方コンプリートでコイン加算', () async {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final m = await c.read(collectionProvider.notifier)
          .collect(kPrefectureCollection, prefectureId(1));
      expect(m.single.coins, 100);
      expect(c.read(coinProvider).totalCoins, 100);
      expect(await c.read(collectionProvider.notifier)
          .collect(kPrefectureCollection, prefectureId(1)), isEmpty);
    });

    test('通知計画: 時間帯が記録される', () async {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final n = c.read(notificationPlanProvider.notifier);
      for (var i = 0; i < 6; i++) {
        await n.recordActivity(DateTime(2026, 10, 29, 19));
      }
      expect(n.planFor(const NotificationContext()).hour, 19);
    });
  });
}

void worldPortTests() {
  group('世界版コアからの移植', () {
    setUp(() => SharedPreferences.setMockInitialValues({}));

    test('連続正解ボーナス: 5問ごと、誤答でリセット', () async {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final n = c.read(answerStreakProvider.notifier);
      var total = 0;
      for (var i = 0; i < 5; i++) {
        total += await n.recordAnswer(true);
      }
      expect(total, 10);
      expect(c.read(coinProvider).totalCoins, 10);
      await n.recordAnswer(false);
      expect(c.read(answerStreakProvider), 0);
    });

    test('解説の詳しさ・自動ヒント・もうすぐ解除', () {
      const sel = ExplanationDepthSelector();
      expect(sel.selectDepth(0), ExplanationDepth.brief);
      expect(sel.selectDepth(1), ExplanationDepth.standard);
      expect(sel.selectDepth(2), ExplanationDepth.detailed);
      const hint = AutoHintPolicy();
      expect(hint.shouldShowHint(null), isTrue);
      expect(hint.shouldShowHint(0.5), isTrue);
      expect(hint.shouldShowHint(0.9), isFalse);
      const p = AchievementProximityHint();
      final all = [
        const AchievementProgress('streak7', 5, 7),
        const AchievementProgress('correct100', 90, 100),
        const AchievementProgress('done', 3, 3),
      ];
      expect(p.remainingToUnlock(all), {'streak7': 2, 'correct100': 10});
      expect(p.closest(all)!.id, 'streak7');
    });

    test('週次チャレンジ: 達成で一度だけ報酬、翌週リセット', () async {
      final c = ProviderContainer();
      addTearDown(c.dispose);
      final n = c.read(weeklyChallengeProvider.notifier)..target = 2;
      final mon = DateTime(2026, 10, 26);
      expect(await n.recordCorrectAnswer(now: mon), 0);
      expect(await n.recordCorrectAnswer(now: mon), 100);
      expect(await n.recordCorrectAnswer(now: mon), 0);
      expect(c.read(coinProvider).totalCoins, 100);
      await n.recordCorrectAnswer(now: DateTime(2026, 11, 2));
      expect(c.read(weeklyChallengeProvider).completed, 1);
    });

    test('家族チャレンジ: 手番と勝敗', () {
      final s = FamilyChallengeSession(questionsPerPlayer: 2);
      expect(s.shouldRecordProgress, isTrue);
      s..recordAnswer(true)..recordAnswer(true);
      expect(s.turn, FamilyTurn.parent);
      expect(s.shouldRecordProgress, isFalse);
      s..recordAnswer(true)..recordAnswer(false);
      expect(s.isFinished, isTrue);
      expect(s.winner, FamilyTurn.child);
    });
  });
}
