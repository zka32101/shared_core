import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_core/models/friend_model.dart';
import 'package:shared_core/providers/friend_provider.dart';
import 'friend_search_page.dart';
import 'friend_requests_page.dart';

/// フレンド一覧画面（改善版）- 検索・リクエスト管理を統合
class FriendsListPage extends ConsumerWidget {
  const FriendsListPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final friendsAsync = ref.watch(friendProvider);

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('フレンド'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.people), text: 'フレンド一覧'),
              Tab(icon: Icon(Icons.mail), text: 'リクエスト'),
            ],
          ),
          actions: [
            IconButton(
              icon: const Icon(Icons.person_add),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const FriendSearchPage()),
                );
              },
              tooltip: 'フレンドを追加',
            ),
          ],
        ),
        body: TabBarView(
          children: [
            // タブ 1: フレンド一覧
            friendsAsync.when(
              loading: () => const Center(child: CircularProgressIndicator()),
              error: (err, st) => Center(
                child: Text('エラー: $err'),
              ),
              data: (friends) {
                if (friends.isEmpty) {
                  return Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.people_outline,
                          size: 64,
                          color: Colors.grey[400],
                        ),
                        const SizedBox(height: 16),
                        Text(
                          'フレンドがいません',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                        const SizedBox(height: 24),
                        ElevatedButton.icon(
                          onPressed: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (_) => const FriendSearchPage(),
                              ),
                            );
                          },
                          icon: const Icon(Icons.person_add),
                          label: const Text('フレンドを追加'),
                        ),
                      ],
                    ),
                  );
                }

                return ListView.builder(
                  padding: const EdgeInsets.all(8),
                  itemCount: friends.length,
                  itemBuilder: (context, index) {
                    return _FriendCard(friend: friends[index]);
                  },
                );
              },
            ),
            // タブ 2: フレンドリクエスト
            const FriendRequestsPage(),
          ],
        ),
      ),
    );
  }
}

class _FriendCard extends ConsumerWidget {
  final Friend friend;

  const _FriendCard({required this.friend});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor: Colors.blue[100],
          child: Text(
            friend.displayName.isNotEmpty ? friend.displayName[0].toUpperCase() : '?',
          ),
        ),
        title: Text(friend.displayName),
        subtitle: friend.grade != null
            ? Text('${friend.grade}年生 • ${_formatDate(friend.addedAt)}')
            : Text(_formatDate(friend.addedAt)),
        trailing: PopupMenuButton(
          itemBuilder: (context) => [
            PopupMenuItem(
              child: const Text('プロフィール'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${friend.displayName} のプロフィール')),
                );
              },
            ),
            PopupMenuItem(
              child: const Text('ランキングで比較'),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('${friend.displayName} とのランキング比較')),
                );
              },
            ),
            PopupMenuDivider(),
            PopupMenuItem(
              child: const Text(
                'フレンドを削除',
                style: TextStyle(color: Colors.red),
              ),
              onTap: () {
                _showRemoveDialog(context, ref);
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _showRemoveDialog(BuildContext context, WidgetRef ref) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('フレンドを削除'),
        content: Text('${friend.displayName} さんをフレンドから削除しますか？'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('キャンセル'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            style: TextButton.styleFrom(foregroundColor: Colors.red),
            child: const Text('削除'),
          ),
        ],
      ),
    );

    if (confirmed == true) {
      try {
        await ref.read(friendProvider.notifier).removeFriend(friend.friendUserId);
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('${friend.displayName} さんをフレンドから削除しました')),
          );
        }
      } catch (e) {
        if (context.mounted) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('エラー: $e')),
          );
        }
      }
    }
  }

  String _formatDate(DateTime date) {
    final now = DateTime.now();
    final difference = now.difference(date);

    if (difference.inDays == 0) {
      return '今日';
    } else if (difference.inDays == 1) {
      return '昨日';
    } else if (difference.inDays < 7) {
      return '${difference.inDays}日前';
    } else if (difference.inDays < 30) {
      return '${(difference.inDays / 7).floor()}週間前';
    } else {
      return '${(difference.inDays / 30).floor()}ヶ月前';
    }
  }
}
