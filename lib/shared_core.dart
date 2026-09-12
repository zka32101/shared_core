library shared_core;

// Models
export 'models/user_profile.dart';
export 'models/quest_model.dart';
export 'models/badge_model.dart'; // BadgeModel, BadgeRarity, BadgeLibrary, BadgeCategory, EarnedBadge
export 'models/avatar_model.dart';
export 'models/character_data.dart'; // Subject, BaseCharacter, CharacterProfile, CharacterStats, CharacterState, AppShopItem, ShopItemKind, kLevelUpCost (Phase 4.1 拡張)
export 'models/lesson_content_model.dart'; // LessonContent, LessonSection（解説メニュー）
export 'models/feedback_model.dart'; // FeedbackType, FeedbackReport（バグ報告・改善要望）
export 'models/ranking_model.dart'; // RankingEntry, RankingGroupBy, RankingFilter（ランキング）
export 'models/friend_model.dart'; // Friend（友達機能の共通基盤）
export 'models/friend_request_model.dart'; // FriendRequest, UserProfile, FriendRequestStatus, FriendshipStatus（Phase 4.19）
export 'models/multiplayer_model.dart'; // MatchmakingQueueEntry, MatchState, PlayerRating（マルチプレイ対戦の共通基盤）
export 'models/screen_time_model.dart'; // ScreenTimeSettings, ScreenTimeUsage（利用時間制限）
export 'models/global_ranking_model.dart'; // GlobalRankingEntry, SubjectRankingEntry, UserRankingStats（Phase 4.3）
export 'models/mission_model.dart'; // Mission, MissionReward, UserMissionProgress, MissionListItem（Phase 4.5）
export 'models/daily_mission_model.dart'; // DailyMission, MissionReward, DailyMissionProgress, DailyMissionListItem（Phase 4.20）
export 'models/retention_model.dart'; // DailyMission, StreakData, WeeklyBonus, RetentionConfig（Phase 4.13）
export 'models/learning_metrics.dart'; // LearningMetrics, WeeklyMetrics, MonthlyMetrics（Phase 4.10）
export 'models/adaptive_difficulty_model.dart'; // DifficultyLevel, AdaptiveMetrics, UserAdaptiveDifficulty, DifficultyAdjustmentHistory, AdaptiveDifficultyConfig, DifficultyRecommendation, DifficultyPerformanceStats, UserLearningPattern（Phase 4.19）

// Data
export 'data/badge_data.dart'; // unifiedBadges, getBadgesForSubject（Phase 4.1：60個の統一バッジデータ）
export 'data/common_shop_items.dart'; // kCommonShopItems（背景テーマ・フレームの共通カタログ）

// Providers
export 'providers/progress_provider.dart';
export 'providers/adaptive_provider.dart';
export 'providers/daily_bonus_provider.dart';
export 'providers/coin_provider.dart';
export 'providers/badge_provider.dart';
export 'providers/avatar_provider.dart';
export 'providers/profile_provider.dart';
export 'providers/profile_data_migration.dart'; // ProfileDataMigration（profile-scoped key 生成）
export 'providers/learning_timer_provider.dart';
export 'providers/character_state_provider.dart'; // BaseCharacterNotifier, BaseCharacterProfileNotifier (Phase 4.1), CharacterStateMap, CharacterProfileMap, characterStateProvider
export 'providers/inventory_provider.dart';        // InventoryNotifier, inventoryProvider
export 'providers/equipped_items_provider.dart';   // BaseEquippedItemsNotifier, equippedItemsProvider（装着状態）
export 'providers/lesson_provider.dart';           // LessonNotifier, lessonProvider（解説メニュー）
export 'providers/feedback_provider.dart';         // FeedbackNotifier, feedbackProvider（バグ報告・改善要望）
export 'providers/ranking_provider.dart';          // RankingNotifier, rankingProvider（ランキング）
export 'providers/friend_provider.dart';           // FriendNotifier, friendProvider（友達機能の共通基盤）
export 'providers/friend_request_provider.dart';   // FriendRequestNotifier, friendRequestProvider, incomingFriendRequestsProvider, outgoingFriendRequestsProvider（Phase 4.19）
export 'providers/matchmaking_provider.dart';      // BaseMatchmakingNotifier, matchmakingProvider, MatchmakingHandlers（マッチメイキング）
export 'providers/match_provider.dart';            // BaseMatchNotifier, currentMatchProvider, MatchHandlers（対戦中マッチ状態）
export 'providers/screen_time_provider.dart';      // BaseScreenTimeNotifier, screenTimeProvider（利用時間制限）
export 'providers/global_ranking_provider.dart';  // GlobalRankingNotifier, globalRankingProvider, subjectRankingStreamProvider（Phase 4.3）
export 'providers/mission_provider.dart';         // MissionNotifier, missionProvider, missionProgressProvider（Phase 4.5）
export 'providers/daily_mission_provider.dart';   // DailyMissionNotifier, dailyMissionProvider, activeDailyMissionsProvider, dailyMissionCoinsProvider（Phase 4.20）
export 'providers/weekly_bonus_provider.dart';    // WeeklyBonusNotifier, weeklyBonusProvider, consecutiveDaysProvider, weekCompletionEmojisProvider, canClaimWeeklyBonusProvider（Phase 4.20）
export 'providers/retention_providers.dart';      // retentionConfigProvider, todayMissionsProvider, streakDataProvider, weeklyBonusProgressProvider（Phase 4.13）
export 'providers/retention_notifier.dart';       // RetentionNotifier, retentionNotifierProvider（Phase 4.13）
export 'providers/learning_metrics_provider.dart'; // todayMetricsProvider, weeklyMetricsProvider, monthlyMetricsProvider（Phase 4.10）
export 'providers/metrics_notifier.dart';         // MetricsNotifier, metricsNotifierProvider（Phase 4.10）
export 'providers/adaptive_difficulty_provider.dart'; // AdaptiveDifficultyNotifier, adaptiveDifficultyNotifierProvider, adaptiveDifficultyConfigProvider（Phase 4.19）

// Widgets
export 'widgets/generic_quiz_widget.dart';
export 'widgets/daily_bonus_dialog.dart';
export 'widgets/daily_mission_card.dart';
export 'widgets/timer_chip_widget.dart';
export 'widgets/coin_balance_widget.dart';         // CoinBalanceWidget
export 'widgets/avatar_widget.dart';               // AvatarWidget, LockedAvatarWidget
export 'widgets/character_collection_page.dart';   // CharacterCollectionPage
export 'widgets/coin_shop_page.dart';              // CoinShopPage, ShopItemTile
export 'widgets/furigana_text.dart';               // FuriganaText（{漢字|かんじ}形式のルビ表示、全アプリ共通化）
export 'widgets/lesson_menu_page.dart';            // LessonMenuPage, LessonDetailPage（解説メニュー）
export 'widgets/feedback_form_page.dart';          // FeedbackFormPage（バグ報告・改善要望）
export 'widgets/parental_gate.dart';               // ParentalGateDialog（保護者ゲート）
export 'widgets/screen_time_limit_screen.dart';    // ScreenTimeLimitReachedWidget, ScreenTimeSettingsWidget（利用時間制限）
export 'widgets/time_slot_settings_widget.dart';   // TimeSlotSettingsWidget（時間帯別利用制限設定 Phase 4.21）
export 'widgets/parental_dashboard.dart';          // ParentalDashboard（保護者向けダッシュボード Phase 4.21）
export 'widgets/reports/weekly_bar_chart.dart';    // WeeklyBarChartWidget（週次棒グラフ）
export 'widgets/reports/score_radar_chart.dart';   // ScoreRadarChartWidget（スコア別レーダーチャート）
export 'widgets/multiplayer/matchmaking_search_widget.dart'; // MatchmakingSearchWidget（マッチング待機アニメーション）
export 'widgets/multiplayer/player_rating_card.dart';        // PlayerRatingCard（自分のレーティングカード）
export 'widgets/multiplayer/leaderboard_view.dart';          // LeaderboardView（ランキング表示）
export 'widgets/multiplayer/match_history_tile.dart';        // MatchHistoryTile（対戦履歴1件表示）
export 'widgets/add_friend_dialog.dart';                      // AddFriendDialog, AddFriendButton（フレンド追加ダイアログ Phase 4.19）
export 'widgets/friend_search_page.dart';                     // FriendSearchPage（フレンド検索・申請 Phase 4.4）
export 'widgets/friend_requests_page.dart';                   // FriendRequestsPage（フレンドリクエスト管理 Phase 4.4）
export 'widgets/friends_list_page.dart';                      // FriendsListPage（フレンド一覧・管理 Phase 4.4）
export 'widgets/daily_mission_page.dart';                      // DailyMissionPage（デイリーミッション統一 Phase 4.5）
export 'widgets/retention/daily_missions_widget.dart';        // DailyMissionsWidget（統一デイリーミッション表示 Phase 4.13）
export 'widgets/retention/streak_widget.dart';                // StreakWidget, StreakCompactWidget（統一ストリーク表示 Phase 4.13）
export 'widgets/learning_dashboard_widget.dart';              // LearningDashboardWidget, CompactLearningDashboard（Phase 4.10）
export 'widgets/analytics/weekly_metrics_widget.dart';        // WeeklyMetricsWidget（Phase 4.10）

// Services
export 'services/firebase_service.dart';
export 'services/firestore_matchmaking_service.dart'; // FirestoreMatchmakingService（マルチプレイのFirestoreデフォルト実装）
export 'services/weekly_report_notification_scheduler.dart'; // WeeklyReportNotificationScheduler（保護者向け週次サマリー通知）
export 'services/rating_calculator.dart'; // RatingCalculator（Elo & Glicko-2 レーティング計算 - Phase 4.14）
export 'services/revenue_cat_service.dart'; // RevenueCatService（統一サブスク管理 - Phase 4.7）

// Providers (Phase 4.14)
export 'providers/battle_session_provider.dart'; // BattleSessionHandlers, activeBattleSessionProvider, userRatingProvider, leaderboard providers

// Widgets (Phase 4.14)
export 'widgets/multiplayer/matchmaking_screen.dart'; // MatchmakingScreen（マッチメイキング画面 Phase 4.14）
export 'widgets/multiplayer/battle_screen.dart';      // BattleScreen（バトル進行中画面 Phase 4.14）
export 'widgets/multiplayer/leaderboard_screen.dart'; // LeaderboardScreen, UserRankingDetailScreen（ランキング画面 Phase 4.14）

// Utils
export 'utils/parental_gate_helper.dart'; // requireParentalGate（保護者ゲート呼び出しヘルパー）

// Theme & Config
export 'theme/app_theme_base.dart';
export 'config/app_colors.dart';        // AppColors, SubjectColors, LightColors, DarkColors（v3.0.0 新規）
export 'config/app_typography.dart';   // AppTypography（v3.0.0 新規）
export 'config/subscription_config.dart'; // SubscriptionConfig for unified RevenueCat configuration (Phase 4.7)

// UI Components (v3.0.0 新規)
export 'widgets/components/app_button.dart';     // AppButton, AppButtonStyle, AppButtonSize
export 'widgets/components/app_card.dart';       // AppCard, AppCardStyle, AppImageCard, AppHorizontalCard
export 'widgets/components/app_dialog.dart';     // AppDialog, AppDialogAction, AppDialogStyle, 便利関数群
export 'widgets/components/app_app_bar.dart';    // AppAppBar, GradientAppBar, SearchAppBar, SimpleAppBar
export 'widgets/components/app_snackbar.dart';   // AppSnackBar, AppToast, ToastType

// クロスプロモーション（他アプリ紹介）— 実装は cross_promo_kit（ポートフォリオ全体の共通パッケージ）に一本化。
export 'package:cross_promo_kit/cross_promo_kit.dart';

// Premium Subscription (Phase 4.7)
export 'models/premium_model.dart';
export 'providers/premium_provider.dart';
export 'widgets/premium_gate_widget.dart';

// Paywall & Monetization (Phase 4.11)
export 'models/paywall_config.dart';                        // PaywallVariant, PaywallABConfig, PaywallEvent, PaywallAnalyticsSummary
export 'providers/paywall_provider.dart';                   // paywallConfigProvider, userPaywallVariantProvider, paywallEventsProvider, paywallAnalyticsProvider
export 'widgets/paywall_simple_widget.dart';                // PaywallSimpleWidget (Variant A)
export 'widgets/paywall_featured_widget.dart';              // PaywallFeaturedWidget (Variant B)
export 'widgets/paywall_local_offer_widget.dart';           // PaywallLocalOfferWidget (Variant C)
export 'widgets/adaptive_paywall_screen.dart';              // AdaptivePaywallScreen（統合Paywall画面）

// Dynamic Pricing (Phase 4.12)
export 'models/pricing_strategy.dart';                      // UserSegment, PricingTier, DynamicPrice, SeasonalOffer, PricingConfig, PricingAnalyticsEvent
export 'providers/user_segment_provider.dart';              // userSegmentProvider, pricingConfigProvider, dynamicPriceProvider
export 'providers/dynamic_pricing_notifier.dart';           // DynamicPricingNotifier, dynamicPricingNotifierProvider, pricingConversionRateProvider, averageDiscountBySegmentProvider
export 'widgets/dynamic_paywall_widget.dart';               // DynamicPaywallWidget（ユーザーセグメント別動的価格表示）

// A/B Testing Framework (Phase 4.15)
export 'models/ab_test_model.dart';                         // ABTestConfig, ABTestAssignment, ABTestEvent, ABTestResult, PopulationStats, ABTestState, TestVariant, TestMetric
export 'providers/ab_test_providers.dart';                  // abTestConfigProvider, userABTestAssignmentsProvider, abTestResultsProvider, populationStatsProvider, userTestVariantProvider
export 'providers/ab_test_notifier.dart';                   // ABTestNotifier, abTestNotifierProvider
export 'widgets/ab_test_dashboard.dart';                    // ABTestDashboard, ABTestEventRecorder（A/B テスト分析ダッシュボード Phase 4.15）

// Analytics & Reporting (Phase 4.16)
export 'models/analytics_model.dart';                       // LearningMetric, UserSegmentAnalytics, WeeklyReport, MonthlyReport, LearningGoal, AnalyticsConfig, BehaviorAnalytics, PopulationStats, CohortAnalytics, ABTestMetrics（Phase 4.16）
export 'providers/analytics_provider.dart';                 // analyticsConfigProvider, userSegmentAnalyticsProvider, weeklyReportProvider, monthlyReportProvider, userLearningGoalsProvider, recentLearningMetricsProvider, behaviorAnalyticsProvider, populationStatsProvider, cohortAnalyticsProvider, abTestMetricsProvider（Phase 4.16）
export 'providers/analytics_notifier.dart';                 // AnalyticsNotifier, analyticsNotifierProvider（Phase 4.16）
export 'widgets/analytics_dashboard.dart';                  // AnalyticsDashboard（分析ダッシュボード Phase 4.16）

// Cloud Functions & User Analysis (Phase 4.17)
export 'models/cloud_functions_model.dart';                 // CloudFunctionConfig, SegmentationResult, CohortAnalysisResult, NotificationPayload, FunctionExecutionLog, ChurnPrediction（Phase 4.17）
export 'providers/cloud_functions_provider.dart';           // cloudFunctionsConfigProvider, latestSegmentationResultsProvider, cohortAnalysisProvider, churnPredictionsProvider, functionExecutionLogsProvider（Phase 4.17）
export 'providers/cloud_functions_notifier.dart';           // CloudFunctionsNotifier, cloudFunctionsNotifier（Phase 4.17）
export 'services/cloud_functions_service.dart';             // CloudFunctionsService（Cloud Functions 実行ロジック Phase 4.17）
export 'widgets/cloud_functions_dashboard.dart';            // CloudFunctionsDashboard（Cloud Functions 管理ダッシュボード Phase 4.17）

// Push Notifications & Retention (Phase 4.18)
export 'models/notification_model.dart';                    // PushNotificationConfig, UserNotificationPreference, PushNotificationEvent, NotificationCampaign, RetentionMetrics, CampaignPerformance, RetentionAction（Phase 4.18）
export 'providers/notification_provider.dart';              // notificationConfigProvider, userNotificationPreferenceProvider, userRetentionMetricsProvider, activeCampaignsProvider, campaignPerformanceProvider, userRetentionActionsProvider, populationRetentionStatsProvider, recentNotificationEventsProvider（Phase 4.18）
export 'providers/notification_notifier.dart';              // NotificationNotifier, notificationNotifierProvider（Phase 4.18）
export 'providers/retention_provider.dart';                 // RetentionNotifier, retentionNotifierProvider（Phase 4.18）
export 'services/push_notification_service.dart';           // PushNotificationService（FCM 実行ロジック Phase 4.18）
export 'widgets/notification_settings_page.dart';           // NotificationSettingsPage（通知設定ページ Phase 4.18）
export 'widgets/retention_dashboard.dart';                  // RetentionDashboard（リテンションダッシュボード Phase 4.18）
export 'widgets/notification_settings_widget.dart';         // NotificationSettingsScreen, RetentionAnalyticsDashboard（通知・リテンション設定ダッシュボード Phase 4.18）
