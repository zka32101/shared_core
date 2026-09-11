import 'package:freezed_annotation/freezed_annotation.dart';

part 'cross_app_friend_model.freezed.dart';
part 'cross_app_friend_model.g.dart';

/// 統一ユーザーID（7アプリ全体で一貫する）
@freezed
class CrossAppUserId with _$CrossAppUserId {
  const factory CrossAppUserId({
    required String userId,           // Firebase Auth UID
    required String displayName,
    required String? avatarUrl,       // アバター画像URL
    required int? gradeLevel,         // 学年（3-6）
    required DateTime joinedAt,
    required bool isVerified,         // 認証済みユーザーか
    required DateTime lastActivityAt,
  }) = _CrossAppUserId;

  factory CrossAppUserId.fromJson(Map<String, dynamic> json) =>
      _$CrossAppUserIdFromJson(json);
}

/// クロスアプリフレンド情報
@freezed
class CrossAppFriend with _$CrossAppFriend {
  const factory CrossAppFriend({
    required String friendUserId,
    required String friendDisplayName,
    required String? friendAvatarUrl,
    required int? friendGradeLevel,
    required DateTime friendedAt,
    required FriendStatus status,           // accepted / pending / blocked
    required Map<String, int> appScores,    // 各アプリのスコア: {'kokugo': 100, 'sansu': 150, ...}
    required int totalScore,                // 全アプリ統合スコア
    required bool isOnline,                 // オンライン状態
    required DateTime lastUpdated,
  }) = _CrossAppFriend;

  factory CrossAppFriend.fromJson(Map<String, dynamic> json) =>
      _$CrossAppFriendFromJson(json);
}

enum FriendStatus {
  accepted,      // 承認済み
  pending,       // 承認待ち
  blocked,       // ブロック中
}

/// フレンドリクエスト
@freezed
class FriendRequest with _$FriendRequest {
  const factory FriendRequest({
    required String requestId,
    required String fromUserId,
    required String fromDisplayName,
    required String? fromAvatarUrl,
    required String toUserId,
    required DateTime requestedAt,
    required FriendRequestStatus status,   // pending / accepted / rejected
    required String? message,              // オプショナルメッセージ
    required DateTime? respondedAt,
  }) = _FriendRequest;

  factory FriendRequest.fromJson(Map<String, dynamic> json) =>
      _$FriendRequestFromJson(json);
}

enum FriendRequestStatus {
  pending,       // 待機中
  accepted,      // 承認
  rejected,      // 拒否
  cancelled,     // キャンセル
}

/// フレンドリスト管理用の状態
@freezed
class FriendListState with _$FriendListState {
  const factory FriendListState({
    required List<CrossAppFriend> friends,
    required List<FriendRequest> incomingRequests,
    required List<FriendRequest> outgoingRequests,
    required List<String> blockedUsers,
    required bool isLoading,
    required String? error,
    required DateTime lastFetched,
  }) = _FriendListState;

  factory FriendListState.fromJson(Map<String, dynamic> json) =>
      _$FriendListStateFromJson(json);
}

/// フレンドランキング（フレンドのみのランキングビュー）
@freezed
class FriendRankingEntry with _$FriendRankingEntry {
  const factory FriendRankingEntry({
    required String userId,
    required String displayName,
    required String? avatarUrl,
    required int totalScore,
    required int friendRank,               // フレンド内での順位
    required Map<String, int> appScores,   // 各アプリのスコア
    required bool isOnline,
    required DateTime lastPlayedAt,
  }) = _FriendRankingEntry;

  factory FriendRankingEntry.fromJson(Map<String, dynamic> json) =>
      _$FriendRankingEntryFromJson(json);
}

/// フレンド検索結果
@freezed
class FriendSearchResult with _$FriendSearchResult {
  const factory FriendSearchResult({
    required String userId,
    required String displayName,
    required String? avatarUrl,
    required int? gradeLevel,
    required int totalScore,
    required bool alreadyFriend,           // 既にフレンド判定
    required bool hasOutgoingRequest,      // 送信リクエストがあるか
    required bool hasIncomingRequest,      // 受信リクエストがあるか
  }) = _FriendSearchResult;

  factory FriendSearchResult.fromJson(Map<String, dynamic> json) =>
      _$FriendSearchResultFromJson(json);
}
