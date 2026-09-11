import * as functions from 'firebase-functions';
import * as admin from 'firebase-admin';

const db = admin.firestore();

/**
 * Phase 4.3-4.6: ゲーミフィケーション統一実装用 Cloud Functions
 *
 * Firestore トリガーと定期実行（Cloud Tasks）で、
 * - ランキング自動計算
 * - ミッション自動検出・報酬付与
 * - スクリーンタイム監視
 * などを実現
 */

// =====================================
// Phase 4.3: ランキング自動計算
// =====================================

/**
 * クイズ完了時にスコアを記録・ランキング更新
 * Trigger: onDocumentWrite('/quiz_completions/{docId}')
 */
export const onQuizCompletion = functions.firestore
  .document('quiz_completions/{completionId}')
  .onWrite(async (change, context) => {
    const completion = change.after.data();
    if (!completion) return;

    const { userId, subject, score, maxScore, timestamp } = completion;
    const earnedPoints = Math.round((score / maxScore) * 100);

    try {
      // 教科別スコアを更新
      const userStatsRef = db.collection('user_ranking_stats').doc(userId);
      await userStatsRef.update({
        [`subjectScores.${subject}`]: admin.firestore.FieldValue.increment(
          earnedPoints
        ),
        totalScore: admin.firestore.FieldValue.increment(earnedPoints),
        updatedAt: timestamp,
      });

      // 非同期でランキング再計算をキュー
      await queueRankingRecalculation(userId, subject);
    } catch (error) {
      console.error('Error in onQuizCompletion:', error);
    }
  });

/**
 * ランキング自動計算（バッチ処理）
 * Trigger: 毎日 01:00 JST に定期実行（Cloud Scheduler）
 */
export const calculateGlobalRankings = functions.pubsub
  .schedule('0 1 * * *') // 毎日 01:00
  .timeZone('Asia/Tokyo')
  .onRun(async (context) => {
    try {
      // グローバルランキング計算
      await recalculateGlobalRanking();

      // 教科別ランキング計算
      const subjects = [
        'japanese',
        'math',
        'english',
        'science',
        'social',
        'programming',
        'morality',
      ];
      for (const subject of subjects) {
        await recalculateSubjectRanking(subject);
      }

      console.log('Ranking recalculation completed');
    } catch (error) {
      console.error('Error in calculateGlobalRankings:', error);
    }
  });

/**
 * グローバルランキング再計算ロジック
 */
async function recalculateGlobalRanking() {
  const snapshot = await db
    .collection('user_ranking_stats')
    .orderBy('totalScore', 'desc')
    .get();

  const batch = db.batch();
  let rank = 1;
  let previousScore = -1;
  let previousRank = 1;

  snapshot.docs.forEach((doc, index) => {
    const data = doc.data();
    if (data.totalScore !== previousScore) {
      rank = index + 1;
      previousRank = rank;
    }

    const total = snapshot.size;
    const percentile = ((total - rank + 1) / total) * 100;

    batch.set(
      db.collection('global_rankings').doc(doc.id),
      {
        userId: doc.id,
        totalScore: data.totalScore,
        globalRank: rank,
        percentile,
        lastUpdated: admin.firestore.FieldValue.serverTimestamp(),
      },
      { merge: true }
    );

    previousScore = data.totalScore;
  });

  await batch.commit();
}

/**
 * 教科別ランキング再計算ロジック
 */
async function recalculateSubjectRanking(subject: string) {
  const snapshot = await db
    .collection('user_ranking_stats')
    .where(`subjectScores.${subject}`, '>', 0)
    .orderBy(`subjectScores.${subject}`, 'desc')
    .get();

  const batch = db.batch();
  let rank = 1;
  let previousScore = -1;

  snapshot.docs.forEach((doc, index) => {
    const score = doc.data()[`subjectScores.${subject}`] || 0;
    if (score !== previousScore) {
      rank = index + 1;
    }

    const total = snapshot.size;
    const percentile = ((total - rank + 1) / total) * 100;

    batch.set(
      db
        .collection('subject_rankings')
        .doc(subject)
        .collection('users')
        .doc(doc.id),
      {
        userId: doc.id,
        subject,
        score,
        subjectRank: rank,
        percentile,
        lastUpdated: admin.firestore.FieldValue.serverTimestamp(),
      },
      { merge: true }
    );

    previousScore = score;
  });

  await batch.commit();
}

/**
 * ランキング再計算をキュー（非同期）
 */
async function queueRankingRecalculation(userId: string, subject: string) {
  // Cloud Tasks に追加（簡略化のため省略）
  // 実装時は Cloud Tasks API を使用して非同期実行
}

// =====================================
// Phase 4.5: デイリーミッション
// =====================================

/**
 * クイズ完了時にミッション進捗を自動検出
 * Trigger: onDocumentWrite('/quiz_completions/{docId}')
 */
export const detectMissionProgress = functions.firestore
  .document('quiz_completions/{completionId}')
  .onWrite(async (change, context) => {
    const completion = change.after.data();
    if (!completion) return;

    const { userId, subject, score, maxScore, timestamp } = completion;

    try {
      // ミッション進捗を更新
      await updateMissionProgress(userId, {
        subject,
        questionsCorrect: score === maxScore ? 1 : 0,
        isPerfectStreak: score === maxScore,
      });
    } catch (error) {
      console.error('Error in detectMissionProgress:', error);
    }
  });

/**
 * ミッション進捗更新ロジック
 */
async function updateMissionProgress(
  userId: string,
  completion: {
    subject: string;
    questionsCorrect: number;
    isPerfectStreak: boolean;
  }
) {
  const missionsRef = db.collection('user_mission_progress');
  const today = new Date();
  today.setHours(0, 0, 0, 0);

  // 対象ミッションを検出
  const missionIds = [
    'beginner_stage_3',
    'beginner_stage_5',
    'beginner_stage_10',
    'beginner_perfect',
    // ... その他のミッション
  ];

  const batch = db.batch();

  for (const missionId of missionIds) {
    const docId = `${userId}_${missionId}`;
    const progressRef = missionsRef.doc(docId);

    // 既存の進捗を取得
    const snapshot = await progressRef.get();
    const existing = snapshot.data();

    if (!existing) {
      // 新規作成
      batch.set(progressRef, {
        userId,
        missionId,
        currentValue: completion.questionsCorrect,
        completed: false,
        lastResetDate: today,
        createdAt: new Date(),
        completedAt: null,
      });
    } else {
      // 進捗更新（リセット判定）
      const lastReset = existing.lastResetDate.toDate();
      const needsReset = lastReset < today;

      batch.update(progressRef, {
        currentValue: needsReset
          ? completion.questionsCorrect
          : existing.currentValue + completion.questionsCorrect,
        completed: (needsReset
          ? completion.questionsCorrect
          : existing.currentValue + completion.questionsCorrect) >=
          (missionId === 'beginner_stage_5' ? 5 : 3), // ターゲット値は簡略化
        lastResetDate: needsReset ? today : existing.lastResetDate,
      });
    }
  }

  await batch.commit();
}

/**
 * デイリーミッション自動リセット
 * Trigger: 毎日 00:00 JST
 */
export const resetDailyMissions = functions.pubsub
  .schedule('0 0 * * *') // 毎日 00:00
  .timeZone('Asia/Tokyo')
  .onRun(async (context) => {
    try {
      const usersRef = db.collection('users');
      const userSnapshots = await usersRef.get();

      const batch = db.batch();
      const today = new Date();
      today.setHours(0, 0, 0, 0);

      for (const userDoc of userSnapshots.docs) {
        const missionsRef = db
          .collection('user_mission_progress')
          .where('userId', '==', userDoc.id)
          .where('repeatable', '==', true);

        const missionSnapshots = await missionsRef.get();
        for (const missionDoc of missionSnapshots.docs) {
          batch.update(missionDoc.ref, {
            currentValue: 0,
            completed: false,
            completedAt: null,
            lastResetDate: today,
          });
        }
      }

      await batch.commit();
      console.log('Daily missions reset completed');
    } catch (error) {
      console.error('Error in resetDailyMissions:', error);
    }
  });

/**
 * ミッション達成時に報酬付与
 * Trigger: onDocumentWrite('/user_mission_progress/{docId}')
 */
export const awardMissionRewards = functions.firestore
  .document('user_mission_progress/{missionProgressId}')
  .onWrite(async (change, context) => {
    const after = change.after.data();
    const before = change.before.data();

    // 新たに完了した場合のみ
    if (!after || !before || !after.completed || before.completed) {
      return;
    }

    const { userId, missionId } = after;

    try {
      // 報酬を付与
      await awardRewards(userId, missionId);
    } catch (error) {
      console.error('Error in awardMissionRewards:', error);
    }
  });

/**
 * 報酬付与ロジック
 */
async function awardRewards(userId: string, missionId: string) {
  // ミッションマスターから報酬定義を取得
  const missionMasterRef = db
    .collection('mission_master')
    .doc(missionId);
  const missionSnapshot = await missionMasterRef.get();

  if (!missionSnapshot.exists) {
    console.warn(`Mission not found: ${missionId}`);
    return;
  }

  const mission = missionSnapshot.data();
  const batch = db.batch();

  // 報酬ごとに処理
  for (const reward of mission.rewards || []) {
    switch (reward.type) {
      case 'coins':
        // コイン追加
        batch.update(
          db.collection('user_coins').doc(userId),
          {
            balance: admin.firestore.FieldValue.increment(reward.amount),
            lastUpdated: admin.firestore.FieldValue.serverTimestamp(),
          }
        );
        break;

      case 'badges':
        // バッジ授与
        batch.set(
          db
            .collection('user_earned_badges')
            .doc(userId)
            .collection('badges')
            .doc(reward.itemId || missionId),
          {
            badgeId: reward.itemId || missionId,
            earnedAt: admin.firestore.FieldValue.serverTimestamp(),
          }
        );
        break;

      case 'characterExp':
        // キャラ経験値追加
        batch.update(
          db
            .collection('user_characters')
            .doc(userId)
            .collection('equipped')
            .doc('current'),
          {
            experience: admin.firestore.FieldValue.increment(reward.amount),
          }
        );
        break;

      case 'items':
        // アイテム追加
        batch.update(
          db.collection('user_inventory').doc(userId),
          {
            [`items.${reward.itemId}`]: admin.firestore.FieldValue.increment(1),
          }
        );
        break;
    }
  }

  await batch.commit();
}

// =====================================
// Phase 4.6: スクリーンタイム監視
// =====================================

/**
 * 利用時間を記録（毎時実行）
 * Trigger: 毎時 00 分に定期実行
 */
export const recordScreenTime = functions.pubsub
  .schedule('0 * * * *') // 毎時 00 分
  .onRun(async (context) => {
    try {
      const usersRef = db.collection('users');
      const userSnapshots = await usersRef.get();

      const batch = db.batch();
      const today = new Date();
      today.setHours(0, 0, 0, 0);

      for (const userDoc of userSnapshots.docs) {
        const screenTimeRef = db
          .collection('screen_time_logs')
          .doc(userDoc.id)
          .collection('daily')
          .doc(today.toISOString().split('T')[0]);

        // 現在の利用時間を取得
        const snapshot = await screenTimeRef.get();
        const currentMinutes = snapshot.data()?.totalMinutes || 0;

        batch.set(
          screenTimeRef,
          {
            date: today,
            totalMinutes: currentMinutes + 60, // 1時間追加
            updatedAt: admin.firestore.FieldValue.serverTimestamp(),
          },
          { merge: true }
        );

        // 上限チェック
        const settingsRef = db
          .collection('parent_settings')
          .doc(userDoc.id);
        const settingsSnapshot = await settingsRef.get();

        if (settingsSnapshot.exists) {
          const settings = settingsSnapshot.data();
          const limitMinutes = settings?.dailyLimitMinutes || 180; // デフォルト 3時間

          if (currentMinutes + 60 >= limitMinutes) {
            // 上限に達した - ユーザーに通知
            await sendScreenTimeAlert(userDoc.id, limitMinutes);
          }
        }
      }

      await batch.commit();
      console.log('Screen time recording completed');
    } catch (error) {
      console.error('Error in recordScreenTime:', error);
    }
  });

/**
 * スクリーンタイム上限アラート送信
 */
async function sendScreenTimeAlert(userId: string, limitMinutes: number) {
  // Firebase Cloud Messaging で通知送信
  // 実装時にはユーザーの FCM トークンを使用
  console.log(`Screen time limit alert for user: ${userId} (${limitMinutes}min)`);
}

// =====================================
// Phase 4.4: フレンド機能（補足）
// =====================================

/**
 * フレンドリクエスト送信
 */
export const sendFriendRequest = functions.https.onCall(
  async (data, context) => {
    const { fromUserId, toUserId } = data;
    const uid = context.auth?.uid;

    if (uid !== fromUserId) {
      throw new functions.https.HttpsError(
        'permission-denied',
        'User not authenticated'
      );
    }

    try {
      const batch = db.batch();
      const now = new Date();

      // リクエスト作成
      batch.set(
        db
          .collection('friend_requests')
          .doc(fromUserId)
          .collection('pending')
          .doc(toUserId),
        {
          fromUserId,
          toUserId,
          sentAt: now,
          status: 'pending',
        }
      );

      await batch.commit();

      return { success: true };
    } catch (error) {
      throw new functions.https.HttpsError('internal', String(error));
    }
  }
);

/**
 * フレンドリクエスト受理
 */
export const acceptFriendRequest = functions.https.onCall(
  async (data, context) => {
    const { requesterId, responderId } = data;
    const uid = context.auth?.uid;

    if (uid !== responderId) {
      throw new functions.https.HttpsError(
        'permission-denied',
        'User not authenticated'
      );
    }

    try {
      const batch = db.batch();

      // リクエスト削除
      batch.delete(
        db
          .collection('friend_requests')
          .doc(requesterId)
          .collection('pending')
          .doc(responderId)
      );

      // フレンド追加
      batch.set(
        db
          .collection('friends')
          .doc(responderId)
          .collection('connections')
          .doc(requesterId),
        { addedAt: new Date() }
      );

      batch.set(
        db
          .collection('friends')
          .doc(requesterId)
          .collection('connections')
          .doc(responderId),
        { addedAt: new Date() }
      );

      await batch.commit();

      return { success: true };
    } catch (error) {
      throw new functions.https.HttpsError('internal', String(error));
    }
  }
);
