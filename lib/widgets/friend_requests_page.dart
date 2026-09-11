import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_core/models/friend_model.dart';
import 'package:shared_core/providers/friend_provider.dart';

/// フレンドリクエスト管理画面
class FriendRequestsPage extends ConsumerWidget {
  const FriendRequestsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // フレンドリクエスト表示（実装例では全フレンド表示、実運用では別 provider を作成推奨）
    final friendsAsync = ref.watch(friendProvider);

    return Scaffold(
      appBar: AppBar(title: const Text('フレンドリクエスト')),
      body: friendsAsync.when(
        loading: () => const Center(child: CircularProgressIndicator()),
        error: (err, st) => Center(
          child: Text('エラーが発生しました: $err'),
        ),
        data: (friends) {
          if (friends.isEmpty) {
            return Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Icon(
                    Icons.person_add_disabled,
                    size: 64,
                    color: Colors.grey[400],
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'フレンドリクエストはありません',
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                ],
              ),
            );
          }

          return ListView.builder(
            padding: const EdgeInsets.all(8),
            itemCount: friends.length,
            itemBuilder: (context, index) {
              final friend = friends[index];
              return _FriendRequestCard(friend: friend);
            },
          );
        },
      ),
    );
  }
}

class _FriendRequestCard extends ConsumerStatefulWidget {
  final Friend friend;

  const _FriendRequestCard({required this.friend});

  @override
  ConsumerState<_FriendRequestCard> createState() => _FriendRequestCardState();
}

class _FriendRequestCardState extends ConsumerState<_FriendRequestCard> {
  bool _isLoading = false;

  Future<void> _acceptRequest() async {
    // リクエスト受け入れ処理（実装例）
    // 通常は RemoveFriend ではなく AcceptRequest メソッドが必要
    setState(() => _isLoading = true);
    try {
      // このアクションは UI のみで、実運用では friend_provider に
      // acceptFriendRequest メソッドを追加して実装
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${widget.friend.displayName} さんをフレンド申請受け入れました！')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('エラー: $e')),
      );
    } finally {
      setState(() => _isLoading = false);
    }
  }

  Future<void> _rejectRequest() async {
    setState(() => _isLoading = true);
    try {
      await ref.read(friendProvider.notifier).removeFriend(widget.friend.friendUserId);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('${widget.friend.displayName} さんのリクエストを拒否しました')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('エラー: $e')),
      );
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue[100],
          child: Text(
            widget.friend.displayName.isNotEmpty
                ? widget.friend.displayName[0].toUpperCase()
                : '?',
          ),
        ),
        title: Text(widget.friend.displayName),
        subtitle: widget.friend.grade != null
            ? Text('${widget.friend.grade}年生')
            : null,
        trailing: SizedBox(
          width: 180,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: _isLoading ? null : _acceptRequest,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.green,
                    foregroundColor: Colors.white,
                  ),
                  child: const Text('受け入れ', style: TextStyle(fontSize: 12)),
                ),
              ),
              const SizedBox(width: 8),
              Expanded(
                child: OutlinedButton(
                  onPressed: _isLoading ? null : _rejectRequest,
                  child: const Text('拒否', style: TextStyle(fontSize: 12)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
