import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/coaching_model.dart';

final coachingServiceProvider = Provider<CoachingService>((ref) {
  return CoachingService();
});

final coachingSessionProvider = FutureProvider.autoDispose.family<CoachingSession?, String>(
  (ref, userId) async {
    final service = ref.watch(coachingServiceProvider);
    return service.getCoachingSession(userId);
  },
);

final learningInsightProvider = FutureProvider.autoDispose.family<LearningInsight?, String>(
  (ref, userId) async {
    final service = ref.watch(coachingServiceProvider);
    return service.getLearningInsight(userId);
  },
);

final coachingAdvicesProvider = FutureProvider.autoDispose.family<List<CoachingAdvice>, String>(
  (ref, userId) async {
    final service = ref.watch(coachingServiceProvider);
    return service.getCoachingAdvices(userId);
  },
);

final coachingGoalsProvider = FutureProvider.autoDispose.family<List<CoachingGoal>, String>(
  (ref, userId) async {
    final service = ref.watch(coachingServiceProvider);
    return service.getCoachingGoals(userId);
  },
);

final coachingNotifierProvider = StateNotifierProvider<CoachingNotifier, Map<String, dynamic>>(
  (ref) => CoachingNotifier(ref.watch(coachingServiceProvider)),
);

class CoachingService {
  final FirebaseFirestore _firestore = FirebaseFirestore.instance;
  
  /// コーチングセッションを取得
  Future<CoachingSession?> getCoachingSession(String userId) async {
    try {
      final doc = await _firestore
          .collection('coaching')
          .doc('sessions')
          .collection(userId)
          .doc('current')
          .get();
      
      if (!doc.exists) return null;
      return CoachingSession.fromJson(doc.data() as Map<String, dynamic>);
    } catch (e) {
      print('Error fetching coaching session: $e');
      return null;
    }
  }
  
  /// 学習インサイトを取得
  Future<LearningInsight?> getLearningInsight(String userId) async {
    try {
      final doc = await _firestore
          .collection('coaching')
          .doc('insights')
          .collection(userId)
          .doc('latest')
          .get();
      
      if (!doc.exists) return null;
      return LearningInsight.fromJson(doc.data() as Map<String, dynamic>);
    } catch (e) {
      print('Error fetching learning insight: $e');
      return null;
    }
  }
  
  /// コーチングアドバイスを取得
  Future<List<CoachingAdvice>> getCoachingAdvices(String userId) async {
    try {
      final snapshot = await _firestore
          .collection('coaching')
          .doc('advices')
          .collection(userId)
          .orderBy('priority', descending: true)
          .orderBy('givenAt', descending: true)
          .limit(10)
          .get();
      
      return snapshot.docs
          .map((doc) => CoachingAdvice.fromJson(doc.data()))
          .toList();
    } catch (e) {
      print('Error fetching coaching advices: $e');
      return [];
    }
  }
  
  /// コーチングゴールを取得
  Future<List<CoachingGoal>> getCoachingGoals(String userId) async {
    try {
      final snapshot = await _firestore
          .collection('coaching')
          .doc('goals')
          .collection(userId)
          .where('isCompleted', isEqualTo: false)
          .orderBy('deadline')
          .get();
      
      return snapshot.docs
          .map((doc) => CoachingGoal.fromJson(doc.data()))
          .toList();
    } catch (e) {
      print('Error fetching coaching goals: $e');
      return [];
    }
  }
  
  /// 学習インサイトを生成
  Future<LearningInsight> generateLearningInsight(
    String userId,
    Map<String, SubjectInsight> subjectInsights,
  ) async {
    try {
      final insight = _analyzeLearningPatterns(userId, subjectInsights);
      
      await _firestore
          .collection('coaching')
          .doc('insights')
          .collection(userId)
          .doc('latest')
          .set(insight.toJson());
      
      return insight;
    } catch (e) {
      print('Error generating learning insight: $e');
      rethrow;
    }
  }
  
  /// AI コーチングアドバイスを生成
  Future<List<CoachingAdvice>> generateCoachingAdvices(
    String userId,
    LearningInsight insight,
  ) async {
    try {
      final advices = _generateAdvices(userId, insight);
      
      final batch = _firestore.batch();
      for (final advice in advices) {
        final ref = _firestore
            .collection('coaching')
            .doc('advices')
            .collection(userId)
            .doc(advice.adviceId);
        batch.set(ref, advice.toJson());
      }
      await batch.commit();
      
      return advices;
    } catch (e) {
      print('Error generating coaching advices: $e');
      return [];
    }
  }
  
  /// アドバイスに対するアクション完了を記録
  Future<void> recordAdviceAction(String userId, String adviceId) async {
    try {
      await _firestore
          .collection('coaching')
          .doc('advices')
          .collection(userId)
          .doc(adviceId)
          .update({
            'isActedUpon': true,
            'actedUponAt': DateTime.now().toIso8601String(),
          });
    } catch (e) {
      print('Error recording advice action: $e');
      rethrow;
    }
  }
  
  /// コーチングゴールを作成
  Future<String> createCoachingGoal(
    String userId,
    String targetSubject,
    String goal,
    double targetValue,
    DateTime deadline,
  ) async {
    try {
      final goalId = _firestore.collection('dummy').doc().id;
      final coachingGoal = CoachingGoal(
        goalId: goalId,
        userId: userId,
        targetSubject: targetSubject,
        goal: goal,
        targetValue: targetValue,
        createdAt: DateTime.now(),
        deadline: deadline,
        currentProgress: 0.0,
        isCompleted: false,
        completedAt: null,
        relatedAdvices: [],
      );
      
      await _firestore
          .collection('coaching')
          .doc('goals')
          .collection(userId)
          .doc(goalId)
          .set(coachingGoal.toJson());
      
      return goalId;
    } catch (e) {
      print('Error creating coaching goal: $e');
      rethrow;
    }
  }
  
  /// 学習パターンを分析
  LearningInsight _analyzeLearningPatterns(
    String userId,
    Map<String, SubjectInsight> subjectInsights,
  ) {
    final strengthAreas = <String>[];
    final weaknessAreas = <String>[];
    var totalAccuracy = 0.0;
    var totalMinutes = 0;
    
    for (final insight in subjectInsights.values) {
      totalAccuracy += insight.currentAccuracy;
      totalMinutes += insight.totalLearningMinutes;
      
      for (final topic in insight.topicStrengths) {
        if (topic.masteryLevel >= 80) {
          strengthAreas.add('${insight.appName}:${topic.topicName}');
        }
      }
      
      weaknessAreas.addAll(insight.strugglingTopics.map(
        (t) => '${insight.appName}:$t',
      ));
    }
    
    final avgAccuracy = subjectInsights.isEmpty 
        ? 0.0 
        : totalAccuracy / subjectInsights.length;
    
    final pattern = _determinePattern(subjectInsights);
    
    return LearningInsight(
      userId: userId,
      analyzedAt: DateTime.now(),
      subjectInsights: subjectInsights,
      overallLearningPattern: pattern,
      strengthAreas: strengthAreas.toSet().toList(),
      weaknessAreas: weaknessAreas.toSet().toList(),
      consistencyTrendScore: _calculateConsistencyTrend(subjectInsights),
      engagementTrendScore: _calculateEngagementTrend(subjectInsights),
      recommendedFocusArea: _determineRecommendedFocus(subjectInsights),
      estimatedDaysToImprovement: _estimateDaysToImprovement(avgAccuracy),
      successPatterns: _identifySuccessPatterns(subjectInsights),
      failurePatterns: _identifyFailurePatterns(subjectInsights),
    );
  }
  
  /// アドバイスを生成
  List<CoachingAdvice> _generateAdvices(
    String userId,
    LearningInsight insight,
  ) {
    final advices = <CoachingAdvice>[];
    
    // 弱点に対するアドバイス
    for (final weakness in insight.weaknessAreas.take(3)) {
      advices.add(CoachingAdvice(
        adviceId: '${userId}_weakness_${advices.length}',
        category: 'weakness',
        title: '$weakness を強化しましょう',
        description: '最近 $weakness での正答率が低めです。',
        actionableHint: '毎日 10 分 $weakness を練習してみてください。',
        priority: 5,
        givenAt: DateTime.now(),
        targetSubject: weakness.split(':')[0],
        isActedUpon: false,
        actedUponAt: null,
        expectedImpactScore: 80,
      ));
    }
    
    // 継続性に対するアドバイス
    if (insight.consistencyTrendScore < 0) {
      advices.add(CoachingAdvice(
        adviceId: '${userId}_consistency_${advices.length}',
        category: 'strategy',
        title: '継続学習を心がけましょう',
        description: '学習の継続度が低下しています。',
        actionableHint: '毎日同じ時間に学習する習慣をつけてみてください。',
        priority: 4,
        givenAt: DateTime.now(),
        targetSubject: 'all',
        isActedUpon: false,
        actedUponAt: null,
        expectedImpactScore: 70,
      ));
    }
    
    // モチベーションアドバイス
    if (insight.engagementTrendScore < 0.3) {
      advices.add(CoachingAdvice(
        adviceId: '${userId}_motivation_${advices.length}',
        category: 'motivation',
        title: 'あなたの頑張りを応援しています！',
        description: '最近の成長を見守っています。',
        actionableHint: '短い時間からでいいので、楽しく学習してみてください。',
        priority: 3,
        givenAt: DateTime.now(),
        targetSubject: 'all',
        isActedUpon: false,
        actedUponAt: null,
        expectedImpactScore: 60,
      ));
    }
    
    return advices;
  }
  
  /// パターンを判定
  String _determinePattern(Map<String, SubjectInsight> insights) {
    var burstyDays = 0;
    var consistentDays = 0;
    
    for (final insight in insights.values) {
      if (insight.consecutiveDaysLearned >= 5) {
        consistentDays++;
      } else if (insight.daysSinceLastSession > 3) {
        burstyDays++;
      }
    }
    
    if (consistentDays > burstyDays) return 'consistent';
    if (burstyDays > 0) return 'bursty';
    return 'irregular';
  }
  
  /// 継続度トレンドを計算
  double _calculateConsistencyTrend(Map<String, SubjectInsight> insights) {
    var avgConsecutiveDays = 0;
    for (final insight in insights.values) {
      avgConsecutiveDays += insight.consecutiveDaysLearned;
    }
    
    final avg = insights.isEmpty ? 0.0 : avgConsecutiveDays / insights.length;
    return (avg / 30).clamp(-1.0, 1.0);
  }
  
  /// エンゲージメントトレンドを計算
  double _calculateEngagementTrend(Map<String, SubjectInsight> insights) {
    var totalMinutes = 0;
    for (final insight in insights.values) {
      totalMinutes += insight.totalLearningMinutes;
    }
    
    return (totalMinutes / 1000).clamp(-1.0, 1.0);
  }
  
  /// 推奨重点領域を判定
  String _determineRecommendedFocus(Map<String, SubjectInsight> insights) {
    var lowestAccuracy = 100.0;
    var lowestSubject = '';
    
    for (final entry in insights.entries) {
      if (entry.value.currentAccuracy < lowestAccuracy) {
        lowestAccuracy = entry.value.currentAccuracy;
        lowestSubject = entry.value.appName;
      }
    }
    
    return lowestSubject;
  }
  
  /// 改善予想日数を計算
  int _estimateDaysToImprovement(double avgAccuracy) {
    if (avgAccuracy >= 80) return 0;
    final gap = 80 - avgAccuracy;
    return (gap * 2).toInt();
  }
  
  /// 成功パターンを特定
  List<String> _identifySuccessPatterns(Map<String, SubjectInsight> insights) {
    final patterns = <String>[];
    
    for (final insight in insights.values) {
      if (insight.consecutiveDaysLearned >= 7) {
        patterns.add('${insight.appName}: 継続学習');
      }
      if (insight.currentAccuracy >= 85) {
        patterns.add('${insight.appName}: 高精度学習');
      }
    }
    
    return patterns;
  }
  
  /// 失敗パターンを特定
  List<String> _identifyFailurePatterns(Map<String, SubjectInsight> insights) {
    final patterns = <String>[];
    
    for (final insight in insights.values) {
      if (insight.daysSinceLastSession > 7) {
        patterns.add('${insight.appName}: 長期間未実施');
      }
      if (insight.currentAccuracy < 50) {
        patterns.add('${insight.appName}: 低精度');
      }
    }
    
    return patterns;
  }
}

class CoachingNotifier extends StateNotifier<Map<String, dynamic>> {
  final CoachingService _service;
  
  CoachingNotifier(this._service) : super({});
  
  /// コーチングセッションを取得
  Future<CoachingSession?> getCoachingSession(String userId) async {
    return _service.getCoachingSession(userId);
  }
  
  /// 学習インサイトを取得
  Future<LearningInsight?> getLearningInsight(String userId) async {
    return _service.getLearningInsight(userId);
  }
  
  /// コーチングアドバイスを取得
  Future<List<CoachingAdvice>> getCoachingAdvices(String userId) async {
    return _service.getCoachingAdvices(userId);
  }
  
  /// 学習インサイトを生成
  Future<LearningInsight> generateLearningInsight(
    String userId,
    Map<String, SubjectInsight> subjectInsights,
  ) async {
    state = {...state, 'isGenerating': true};
    try {
      final insight = await _service.generateLearningInsight(userId, subjectInsights);
      state = {...state, 'isGenerating': false, 'lastInsight': insight};
      return insight;
    } catch (e) {
      state = {...state, 'isGenerating': false, 'error': e.toString()};
      rethrow;
    }
  }
  
  /// コーチングアドバイスを生成
  Future<List<CoachingAdvice>> generateCoachingAdvices(
    String userId,
    LearningInsight insight,
  ) async {
    state = {...state, 'isGeneratingAdvices': true};
    try {
      final advices = await _service.generateCoachingAdvices(userId, insight);
      state = {...state, 'isGeneratingAdvices': false, 'lastAdvices': advices};
      return advices;
    } catch (e) {
      state = {...state, 'isGeneratingAdvices': false, 'error': e.toString()};
      rethrow;
    }
  }
  
  /// アドバイスのアクション完了を記録
  Future<void> recordAdviceAction(String userId, String adviceId) async {
    try {
      await _service.recordAdviceAction(userId, adviceId);
      state = {...state, 'actionRecorded': adviceId};
    } catch (e) {
      state = {...state, 'error': e.toString()};
      rethrow;
    }
  }
  
  /// コーチングゴールを作成
  Future<String> createCoachingGoal(
    String userId,
    String targetSubject,
    String goal,
    double targetValue,
    DateTime deadline,
  ) async {
    try {
      final goalId = await _service.createCoachingGoal(
        userId,
        targetSubject,
        goal,
        targetValue,
        deadline,
      );
      state = {...state, 'lastGoalId': goalId};
      return goalId;
    } catch (e) {
      state = {...state, 'error': e.toString()};
      rethrow;
    }
  }
}
