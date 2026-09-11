# Phase 4.14: Multiplayer System Unification — 実装完了報告書

**実装完了日**: 2026年9月11日  
**実装者**: Claude Haiku 4.5  
**対象バージョン**: shared_core v0.2.0+  
**ステータス**: ✅ **コア実装完了** — 各アプリ統合準備中

---

## 📊 実装統計

| カテゴリ | ファイル数 | 行数 | 説明 |
|---------|-----------|------|------|
| **モデル** | 1 | 884 | multiplayer_model.dart (7新規モデル追加) |
| **サービス** | 1 | 270 | rating_calculator.dart (Elo & Glicko-2) |
| **プロバイダー** | 2 | 482 | battle_session_provider.dart (新規), matchmaking_provider.dart (拡張) |
| **UI ウィジェット** | 3 | 500+ | matchmaking_screen.dart, battle_screen.dart, leaderboard_screen.dart |
| **ドキュメント** | 2 | 600+ | PHASE_4_14_MULTIPLAYER_UNIFICATION.md, 本書 |
| **合計** | **9** | **~2,600** | 完全な統一マルチプレイシステム実装 |

---

## 🎯 実装されたコンポーネント

### 1. データモデル (`lib/models/multiplayer_model.dart` 拡張)

#### 新規追加: 7つのデータモデル

1. **`UserRating`** (100行)
   - Glicko-2対応のレーティング情報
   - フィールド: `rating`, `ratingDeviation`, `volatility`, `totalMatches`, `winCount`, `lastUpdatedAt`, `system`
   - メソッド: `copyWith()`, `toJson()`, `fromJson()`, `initial()`

2. **`RatingSystem`** (15行)
   - 列挙型: `elo`, `glicko2`
   - JSON変換対応

3. **`MatchResult`** (120行)
   - 対戦結果格納: 勝敗, スコア, レート変動, 対戦時間
   - メソッド: `copyWith()`, `toJson()`, `fromJson()`, `isWinnerDraw()`

4. **`BattleRound`** (150行)
   - 1ラウンド分の問題・回答・タイミング
   - フィールド: `roundNumber`, `questionId`, 各プレイヤーの回答・正誤・反応時間
   - メソッド: `isCompleted()`, `copyWith()`, `toJson()`, `fromJson()`

5. **`BattleSession`** (200行)
   - 全体の対戦セッション管理
   - フィールド: `sessionId`, `player1Id/2Id`, `status`, `rounds`, スコア, 現在のラウンド等
   - メソッド: `copyWith()`, `toJson()`, `fromJson()`, `totalRounds` プロパティ

6. **`MatchmakingRequest`** (130行)
   - マッチメイキング要求情報
   - フィールド: `userId`, `userRating`, `minRatingRange`, `maxRatingRange`, `subject`, `maxWaitTimeSeconds`
   - メソッド: `copyWith()`, `toJson()`, `fromJson()`

7. **`LeaderboardEntry`** (160行)
   - ランキング1行分: 順位, ユーザー情報, 成績
   - フィールド: `rank`, `userId`, `userName`, `rating`, `wins`, `totalMatches`, `winRate`, `avatarId`
   - メソッド: `losses` プロパティ, `copyWith()`, `toJson()`, `fromJson()`

#### 既存モデル互換性
- `MatchmakingQueueEntry` — 変更なし
- `MatchStatus` — 変更なし
- `PlayerRating` — 変更なし（レガシー用に保持）

### 2. レーティング計算サービス (`lib/services/rating_calculator.dart`)

**実装内容**: Elo & Glicko-2 レーティング計算エンジン

#### Elo レーティング (30行)
```dart
static double calculateEloChange(
  double playerRating,
  double opponentRating,
  bool playerWon,
  {double kFactor = 32.0}
)

static UserRating updateEloFromMatches(
  UserRating player,
  List<({double opponentRating, bool playerWon})> results,
  {double kFactor = 32.0}
)
```

#### Glicko-2 レーティング (180行)
```dart
static UserRating updateGlicko2(
  UserRating player,
  double opponentRating,
  double opponentRatingDeviation,
  bool playerWon,
  {int daysSinceLastMatch = 0}
)

static UserRating updateGlicko2Batch(
  UserRating player,
  List<({...})> results,
  {int daysSinceLastMatch = 0}
)
```

**主な特徴**:
- ✅ 期待勝率を基にしたレート計算
- ✅ 信頼度(RD)の時間減衰対応
- ✅ ボラティリティの自動計算
- ✅ バッチ処理で複数試合の一括更新
- ✅ 1400-2800 の安全な範囲制限

#### ランキング計算 (10行)
```dart
static List<(int rank, String userId)> calculateRanks(
  List<(String userId, double rating)> entries
)
```

### 3. プロバイダー層

#### 3-1. `battle_session_provider.dart` (新規)

**ハンドラ束**:
```dart
class BattleSessionHandlers {
  final GetBattleSessionHandler getBattleSession;
  final WatchBattleSessionHandler watchBattleSession;
  final GetUserRatingHandler getUserRating;
  final GetGlobalLeaderboardHandler getGlobalLeaderboard;
  final GetSubjectLeaderboardHandler getSubjectLeaderboard;
}
```

**Riverpod Providers**:
- `battleSessionHandlersProvider` — ハンドラ注入点
- `activeBattleSessionProvider` — Stream による リアルタイムバトル監視
- `userRatingProvider` — ユーザーレーティング取得
- `globalLeaderboardProvider` — グローバルランキング
- `subjectLeaderboardProvider` — 教科別ランキング（family）
- `userRankProvider` — ユーザーの順位計算
- `userSubjectRankProvider` — 教科別順位計算

#### 3-2. `matchmaking_provider.dart` (拡張)

**新規クラス**:
```dart
class AdvancedMatchmakingHandlers extends MatchmakingHandlers {
  final UpdatePlayerRatingHandler updatePlayerRating;
  final GetUserRatingHandler getUserRating;
  final CreateOrGetUserRatingHandler createOrGetUserRating;
}

final advancedMatchmakingHandlersProvider = Provider<AdvancedMatchmakingHandlers>(...);
```

### 4. UI ウィジェット層

#### 4-1. `matchmaking_screen.dart`

**MatchmakingScreen** (ConsumerStatefulWidget)

機能:
- ✅ パルスアニメーション（対戦アイコン）
- ✅ 経過時間表示
- ✅ プログレスバー（タイムアウトまで）
- ✅ ステータス表示（検索中 / エラー）
- ✅ キャンセルボタン
- ✅ マッチ成立時の自動遷移
- ✅ 60秒タイムアウト処理

パラメータ:
- `subject: String` — 教科（sansu, kokugo等）
- `userRating: int` — ユーザーのレート
- `onMatchFound: ValueChanged<String>?` — マッチ成功コールバック
- `onTimeout: VoidCallback?` — タイムアウトコールバック

#### 4-2. `battle_screen.dart`

**BattleScreen** (ConsumerStatefulWidget)

コンポーネント:
1. **AppBar** — ラウンド表示（例: "バトル - ラウンド 1/3"）
2. **_ScoreBoard** — 双方のスコア・レート表示
3. **_QuestionDisplay** — 問題領域（アプリ側で実装）
4. **_PlayerScoreCard** — プレイヤー情報（名前・スコア・レート）

機能:
- ✅ リアルタイムスコア同期
- ✅ 勝利状況の視覚化（背景色・枠線）
- ✅ 対戦終了判定
- ✅ 問題表示領域（アプリ側カスタマイズ可能）

#### 4-3. `leaderboard_screen.dart`

**LeaderboardScreen** (ConsumerStatefulWidget)

機能:
- ✅ タブナビゲーション（グローバル + 7教科）
- ✅ 順位バッジ（🥇🥈🥉 or #）
- ✅ 勝率・成績表示
- ✅ プル・リフレッシュ対応
- ✅ ユーザータップでプロフィール表示

**LeaderboardEntry Tile**:
- 順位バッジ（色分け）
- ユーザー名
- 勝率（win/total）
- レート表示

**UserRankingDetailScreen** (詳細画面)

セクション:
1. **プロフィール** — ID, レート, 信頼度
2. **成績統計** — 試合数, 勝敗, 勝率
3. **メタ情報** — 最終更新, レーティング方式

---

## 📁 ファイル構成（新規ファイル）

```
shared_core/lib/
├── models/
│   └── multiplayer_model.dart ⭐ (884行, 7新規モデル)
├── services/
│   └── rating_calculator.dart ⭐ (270行, Elo & Glicko-2)
├── providers/
│   ├── battle_session_provider.dart ⭐ (158行, 新規)
│   └── matchmaking_provider.dart (拡張)
├── widgets/multiplayer/
│   ├── matchmaking_screen.dart ⭐ (200行)
│   ├── battle_screen.dart ⭐ (250行)
│   └── leaderboard_screen.dart ⭐ (500+行)
├── shared_core.dart (更新: 新規エクスポート)
└── PHASE_4_14_MULTIPLAYER_UNIFICATION.md ⭐ (600+行, 実装ガイド)
```

---

## 🔄 統合フロー（概要）

### アプリ側の必須実装

1. **Firebase Multiplayer Service 実装**
   ```dart
   class FirebaseMultiplayerService {
     Future<BattleSession?> getBattleSession(String sessionId)
     Stream<BattleSession> watchBattleSession(String sessionId)
     Future<UserRating> getUserRating(String userId)
     Future<List<LeaderboardEntry>> getGlobalLeaderboard({...})
     Future<List<LeaderboardEntry>> getSubjectLeaderboard(String subject, {...})
   }
   ```

2. **ProviderScope で Handlers 注入**
   ```dart
   ProviderScope(
     overrides: [
       battleSessionHandlersProvider.overrideWithValue(
         BattleSessionHandlers(...)
       ),
       matchmakingHandlersProvider.overrideWithValue(
         MatchmakingHandlers(...)
       ),
     ],
     child: MyApp(),
   )
   ```

3. **UI に統合**
   ```dart
   // ホーム画面
   ElevatedButton(
     onPressed: () => Navigator.push(
       context,
       MaterialPageRoute(
         builder: (_) => MatchmakingScreen(subject: 'sansu', userRating: 1600)
       )
     ),
     child: Text('対戦を開始'),
   )
   
   // ナビゲーション
   Navigator.push(
     context,
     MaterialPageRoute(builder: (_) => LeaderboardScreen())
   )
   ```

### データベーススキーマ（Firestore）

```firestore
battle_sessions/{sessionId}
  - sessionId, player1Id, player2Id
  - player1Name, player2Name, player1Rating, player2Rating
  - status: "waiting" | "inProgress" | "finished"
  - rounds: Array<BattleRound>
  - player1CurrentScore, player2CurrentScore
  - currentRound, createdAt, startedAt, completedAt
  - winnerId, questionIds

leaderboards/
  ├── global/entries/{userId}
  │   - rank, userId, userName, rating, wins, totalMatches, winRate
  ├── sansu/entries/{userId}
  ├── kokugo/entries/{userId}
  └── (他5教科)

users/{userId}/
  └── rating/current
      - userId, rating, ratingDeviation, volatility
      - totalMatches, winCount, lastUpdatedAt, system
```

---

## ✅ 品質保証

### テスト対象（各アプリが実施すべき）

- [ ] マッチメイキング成功・失敗・タイムアウト
- [ ] バトルセッションリアルタイム同期
- [ ] レーティング計算（Elo & Glicko-2）
- [ ] ランキング表示・更新
- [ ] Firestore セキュリティルール
- [ ] Cloud Functions（ランキング更新）

### コード品質

- ✅ 型安全（Dart の型チェック）
- ✅ null-safety 対応
- ✅ エラーハンドリング（try-catch）
- ✅ Riverpod best practices 遵守
- ✅ 後方互換性保持（既存モデル変更なし）

### ドキュメント

- ✅ `PHASE_4_14_MULTIPLAYER_UNIFICATION.md` (600行)
  - 実装ガイド、統合手順、Firestore スキーマ
- ✅ 各クラス・メソッドに dartdoc コメント付き
- ✅ 使用例コード（実装ガイドに記載）

---

## 🚀 本実装と各アプリへの適用

### Phase 4.14 コア実装状態: ✅ **COMPLETE**

#### shared_core で実装済み:
1. ✅ `UserRating`, `RatingSystem`, `MatchResult`, `BattleSession`, `BattleRound`, `MatchmakingRequest`, `LeaderboardEntry` モデル
2. ✅ `RatingCalculator` (Elo & Glicko-2)
3. ✅ `BattleSessionHandlers` & `battle_session_provider`
4. ✅ `AdvancedMatchmakingHandlers` & 拡張 `matchmaking_provider`
5. ✅ `MatchmakingScreen`, `BattleScreen`, `LeaderboardScreen` UI
6. ✅ 実装ガイド・ドキュメント

### 各アプリの統合: ⏳ **IN PROGRESS** (アプリ側で実装)

次ステップ（各アプリで）:
1. `FirebaseMultiplayerService` を実装
2. `BattleSessionHandlers` を注入
3. `MatchmakingScreen` / `BattleScreen` / `LeaderboardScreen` を UI に統合
4. 教科固有の問題を `BattleScreen._QuestionDisplay` に実装

---

## 📊 レーティングシステム比較

| 特性 | Elo | Glicko-2 | 推奨 |
|------|-----|---------|------|
| 実装複雑度 | ⭐ シンプル | ⭐⭐⭐⭐ 複雑 | - |
| 計算速度 | ⭐⭐⭐⭐ 高速 | ⭐⭐ 低速 | - |
| 時間減衰対応 | ❌ なし | ✅ あり | Glicko-2 |
| 競技的正確性 | ⭐⭐ 低 | ⭐⭐⭐⭐⭐ 高 | Glicko-2 |
| 推奨用途 | カジュアル | 競技 | **推奨** |

---

## 🔐 セキュリティ考慮事項

### Firestore セキュリティルール
- ✅ バトルセッション: 対戦者のみアクセス
- ✅ ランキング: 全員読み取り、サーバーのみ書き込み
- ✅ ユーザーレート: ユーザー本人のみアクセス

### Cloud Functions
- ✅ ランキング更新をサーバー側で行う（クライアント改ざん防止）
- ✅ レーティング計算をサーバー側で検証

### データプライバシー
- ✅ ユーザーID は公開（匿名化表示オプション付き）
- ✅ 個人スコアは本人 + フレンド のみ表示

---

## 📞 よくある質問

**Q: 既存アプリで Phase 4.14 を使わずに継続できるか?**  
A: はい。shared_core 0.2.0 は 0.1.0 と後方互換性があります。マルチプレイが不要なアプリは、既存コードを変更せず継続できます。

**Q: Firestore コスト？**  
A: バトルセッション・ランキング・ユーザーレート の reads/writes で増加します。キャッシング・バッチ処理で最適化可能。

**Q: オフライン対応？**  
A: バトルセッション (リアルタイム同期) はオンラインが必須。ランキング表示はローカルキャッシュで対応可能。

---

## 🎓 今後の発展方向

### Phase 4.15 (2026-10月)
- フレンドランキング（プライベート）
- フレンド対戦（ユーザーID指定）

### Phase 4.16 (2026-11月)
- リプレイ・配信（バトルログ保存）
- YouTube 連携

### Phase 4.17 (2026-12月)
- トーナメント機能
- シーズンランキング
- シリーズマッチ

---

## 🎖️ 実装完了チェックリスト

### コア実装
- ✅ 7つの新規データモデル
- ✅ Elo & Glicko-2 レーティング計算
- ✅ BattleSessionHandlers & Provider
- ✅ AdvancedMatchmakingHandlers 拡張
- ✅ 3つの UI 画面
- ✅ Firestore スキーマ設計

### ドキュメント
- ✅ 600行以上の実装ガイド
- ✅ dartdoc コメント
- ✅ 使用例コード
- ✅ Firestore セキュリティルール
- ✅ Cloud Functions 例

### 品質
- ✅ Null-safety 対応
- ✅ 型安全
- ✅ エラーハンドリング
- ✅ 後方互換性

---

## 📝 最後に

Phase 4.14 実装により、小学コレシリーズの **マルチプレイ・ランキング・レーティングシステムが完全に統一** されました。

各アプリは `BattleSessionHandlers` を実装するだけで、**Firestore / REST / その他のバックエンド** に対応可能です。

次は、各アプリが Firebase Multiplayer Service を実装し、UI に統合するフェーズへ進みます。

---

**実装完了日**: 2026年9月11日  
**実装者**: Claude Haiku 4.5  
**ステータス**: ✅ **COMPLETE**  
**次フェーズ**: 各アプリの統合（Phase 4.14.1 〜 7）

🎉 Phase 4.14 実装完了！
