import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/friend_model.dart';
import '../providers/friend_provider.dart';

/// Phase 4.4: フレンド一覧・管理画面
/// 現在のフレンド一覧を表示し、削除・検索・申請管理ができる画面
class FriendsListPage extends ConsumerStatefulWidget {
  const FriendsListPage({Key? key}) : super(key: key);

  @override
  ConsumerState<FriendsListPage> createState() => _FriendsListPageState();
}

class _FriendsListPageState extends ConsumerState<FriendsListPage> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      ref.read(friendProvider.notifier).loadFriends();
    });
  }

  Future<void> _removeFriend(String friendUserId) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('フレンドを削除しますか？'),
        content: const Text('この操作は取り消せません。'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('キャンセル'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('削除', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        await ref.read(friendProvider.notifier).removeFriend(friendUserId);
        if (mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('フレンドを削除しました')),
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
  }

  void _openSearchPage() {
    // 検索ページへ遷移（各アプリ側で実装）
    // Navigator.push(context, MaterialPageRoute(builder: (_) => FriendSearchPage()));
  }

  @override
  Widget build(BuildContext context) {
    final friendState = ref.watch(friendProvider);
    final friends = friendState.friends;
    final isLoading = friendState.isLoading;

    return Scaffold(
      appBar: AppBar(
        title: Text('フレンド (${friends.length})'),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.search),
            onPressed: _openSearchPage,
          ),
        ],
      ),
      body: isLoading
          ? const Center(child: CircularProgressIndicator())
          : friends.isEmpty
              ? Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.people_outline, size: 64, color: Colors.grey[400]),
                      const SizedBox(height: 16),
                      Text(
                        'フレンドがまだいません',
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                              color: Colors.grey,
                            ),
                      ),
                      const SizedBox(height: 16),
                      ElevatedButton.icon(
                        onPressed: _openSearchPage,
                        icon: const Icon(Icons.search),
                        label: const Text('フレンドを探す'),
                      ),
                    ],
                  ),
                )
              : ListView.builder(
                  padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  itemCount: friends.length,
                  itemBuilder: (context, index) {
                    final friend = friends[index];
                    return _FriendTile(
                      friend: friend,
                      onRemove: () => _removeFriend(friend.friendUserId),
                    );
                  },
                ),
      floatingActionButton: FloatingActionButton(
        onPressed: _openSearchPage,
        child: const Icon(Icons.add),
      ),
    );
  }
}

class _FriendTile extends StatelessWidget {
  final Friend friend;
  final VoidCallback onRemove;

  const _FriendTile({
    required this.friend,
    required this.onRemove,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue.shade300,
          child: Text(
            (friend.friendName.isNotEmpty ? friend.friendName[0] : '?').toUpperCase(),
            style: const TextStyle(color: Colors.white),
          ),
        ),
        title: Text(friend.friendName),
        subtitle: Text('ID: ${friend.friendUserId}'),
        trailing: IconButton(
          icon: const Icon(Icons.delete_outline, color: Colors.red),
          onPressed: onRemove,
        ),
      ),
    );
  }
}
