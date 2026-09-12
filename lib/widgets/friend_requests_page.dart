import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/friend_model.dart';
import '../providers/friend_provider.dart';

/// Phase 4.4: フレンド申請管理画面
/// 受け取ったフレンド申請を確認し、受諾・拒否できる画面
class FriendRequestsPage extends ConsumerStatefulWidget {
  const FriendRequestsPage({Key? key}) : super(key: key);

  @override
  ConsumerState<FriendRequestsPage> createState() => _FriendRequestsPageState();
}

class _FriendRequestsPageState extends ConsumerState<FriendRequestsPage> {
  @override
  void initState() {
    super.initState();
    // 初期化時にペンディングリクエストをロード
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(friendProvider.notifier).loadFriends();
    });
  }

  Future<void> _acceptRequest(Friend friend) async {
    try {
      await ref.read(friendProvider.notifier).addFriend(friend.friendUserId);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('${friend.friendName}をフレンドに追加しました')),
        );
      }
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('エラー: $e'), backgroundColor: Colors.red),
        );
      }
    }
  }

  Future<void> _declineRequest(String friendUserId) async {
    // リクエスト拒否は親側で実装（このページでは表示のみ）
    // 実装は各アプリ側の FirestoreFriendService.declineRequest() を使用
  }

  @override
  Widget build(BuildContext context) {
    final friendState = ref.watch(friendProvider);
    final pendingRequests = friendState.pendingRequests;
    final isLoading = friendState.isLoading;

    return Scaffold(
      appBar: AppBar(
        title: Text('フレンド申請 (${pendingRequests.length})'),
        centerTitle: true,
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : pendingRequests.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.people_outline, size: 64, color: Colors.grey[400]),
                      const SizedBox(height: 16),
                      Text(
                        'フレンド申請はありません',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  itemCount: pendingRequests.length,
                  itemBuilder: (context, index) {
                    final friend = pendingRequests[index];
                    return _RequestTile(
                      friend: friend,
                      onAccept: () => _acceptRequest(friend),
                      onDecline: () => _declineRequest(friend.friendUserId),
                    );
                  },
                ),
    );
  }
}

class _RequestTile extends StatelessWidget {
  final Friend friend;
  final VoidCallback onAccept;
  final VoidCallback onDecline;

  const _RequestTile({
    required this.friend,
    required this.onAccept,
    required this.onDecline,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Row(
          children: [
            CircleAvatar(
              backgroundColor: Colors.green.shade300,
              child: Text(
                (friend.friendName.isNotEmpty ? friend.friendName[0] : '?').toUpperCase(),
                style: const TextStyle(color: Colors.white),
              ),
            ),
            const SizedBox(width: 12),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    friend.friendName,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  Text(
                    'ID: ${friend.friendUserId}',
                    style: Theme.of(context).textTheme.bodySmall?.copyWith(
                          color: Colors.grey,
                        ),
                  ),
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                TextButton(
                  onPressed: onDecline,
                  child: const Text('断る'),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: onAccept,
                  child: const Text('承認'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
