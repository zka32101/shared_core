# Phase 4.4: フレンド検索・申請機能 実装ガイド

## 概要
shared_core で提供されるフレンド検索・申請機能を各アプリで実装するためのガイドです。

## 実装ステップ

### 1. 各アプリの FirestoreFriendService 拡張

`lib/services/firestore_friend_service.dart` に以下のメソッドを追加：

```dart
// フレンド検索ハンドラ
Future<List<Friend>> searchFriends(String query) async {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final userId = auth.currentUser?.uid;
  
  if (userId == null) throw Exception('ユーザーが認証されていません');

  // Firestore クエリでユーザーを検索
  final snapshot = await FirebaseFirestore.instance
      .collection('users')
      .where('displayName', isGreaterThanOrEqualTo: query)
      .where('displayName', isLessThan: query + 'z') // 範囲検索
      .limit(10)
      .get();

  return snapshot.docs
      .where((doc) => doc.id != userId) // 自分を除外
      .map((doc) => Friend(
            friendUserId: doc.id,
            friendName: doc.get('displayName') ?? 'Unknown',
          ))
      .toList();
}

// フレンド申請ハンドラ
Future<void> sendFriendRequest(String targetUserId) async {
  final FirebaseAuth auth = FirebaseAuth.instance;
  final userId = auth.currentUser?.uid;
  
  if (userId == null) throw Exception('ユーザーが認証されていません');

  // Firestore トランザクションで申請を記録
  await FirebaseFirestore.instance.runTransaction((transaction) async {
    // 申請ドキュメント作成
    final requestRef = FirebaseFirestore.instance
        .collection('users')
        .doc(targetUserId)
        .collection('friendRequests')
        .doc(userId);
    
    transaction.set(requestRef, {
      'fromUserId': userId,
      'fromUserName': (await FirebaseFirestore.instance
              .collection('users')
              .doc(userId)
              .get())
          .get('displayName') ??
          'Unknown',
      'sentAt': FieldValue.serverTimestamp(),
    });
  });
}
```

### 2. main.dart でハンドラを注入

```dart
// Firestore サービスを初期化
final friendService = FirestoreFriendService();

// shared_core friendProvider にハンドラを注入
final container = ProviderContainer(
  overrides: [
    // ... その他の overrides ...
    friendProvider.overrideWithValue(FriendNotifier()),
  ],
);

// ハンドラ設定
container.read(friendProvider.notifier)
  ..setFetchHandler(friendService.fetchFriends)
  ..setAddFriendHandler(friendService.addFriend)
  ..setRemoveFriendHandler(friendService.removeFriend)
  // Phase 4.4: 新規ハンドラ追加
  ..setSearchHandler(friendService.searchFriends)
  ..setRequestHandler(friendService.sendFriendRequest);
```

### 3. UI 画面に FriendSearchPage を統合

```dart
import 'package:shared_core/widgets/friend_search_page.dart';
import 'package:shared_core/widgets/friend_requests_page.dart';
import 'package:shared_core/widgets/friends_list_page.dart';

// ナビゲーション設定
routes: {
  '/friends': (context) => const FriendsListPage(),
  '/friends-search': (context) => const FriendSearchPage(),
  '/friends-requests': (context) => const FriendRequestsPage(),
}
```

## Firestore スキーマ例

### users/{userId}/friendRequests/{fromUserId}
```json
{
  "fromUserId": "user_123",
  "fromUserName": "ユーザー名",
  "sentAt": Timestamp,
}
```

### users/{userId}
```json
{
  "userId": "user_123",
  "displayName": "ユーザー名",
  "email": "user@example.com",
  // ... その他のフィールド
}
```

## セキュリティルール設定（Firestore）

```
match /users/{userId}/friendRequests/{requestId} {
  allow read: if request.auth.uid == userId;
  allow create: if request.auth.uid != null;
  allow delete: if request.auth.uid == userId || request.auth.uid == resource.data.fromUserId;
}

match /users/{userId} {
  allow read: if request.auth.uid != null;
  allow write: if request.auth.uid == userId;
}
```

## 実装チェックリスト

- [ ] FirestoreFriendService.searchFriends() 実装
- [ ] FirestoreFriendService.sendFriendRequest() 実装
- [ ] main.dart でハンドラ注入
- [ ] FriendSearchPage をナビゲーションに追加
- [ ] FriendRequestsPage をナビゲーションに追加
- [ ] FriendsListPage をナビゲーションに追加
- [ ] Firestore スキーマ・セキュリティルール設定
- [ ] テスト実施

## 参考ファイル

- `shared_core/lib/providers/friend_provider.dart`: FriendNotifier, FriendState, ハンドラ型定義
- `shared_core/lib/widgets/friend_search_page.dart`: 検索 UI
- `shared_core/lib/widgets/friend_requests_page.dart`: リクエスト管理 UI
- `shared_core/lib/widgets/friends_list_page.dart`: フレンド一覧 UI

## デバッグのコツ

ハンドラが未登録の場合、以下のエラーが表示されます:
- 検索: "フレンド検索処理が未登録です（setSearchHandlerを呼び出してください）"
- 申請: "フレンド申請処理が未登録です（setRequestHandlerを呼び出してください）"

各アプリで上記実装を完了したら、これらのエラーが消えます。
