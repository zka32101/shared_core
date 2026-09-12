import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/friend_model.dart';
import '../providers/friend_provider.dart';

/// Phase 4.4: フレンド検索・申請機能
/// ユーザー名またはユーザーID でフレンドを検索し、申請できる画面
class FriendSearchPage extends ConsumerStatefulWidget {
  const FriendSearchPage({Key? key}) : super(key: key);

  @override
  ConsumerState<FriendSearchPage> createState() => _FriendSearchPageState();
}

class _FriendSearchPageState extends ConsumerState<FriendSearchPage> {
  late TextEditingController _searchController;
  bool _hasSearched = false;

  @override
  void initState() {
    super.initState();
    _searchController = TextEditingController();
  }

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  void _performSearch() {
    final query = _searchController.text.trim();
    if (query.isEmpty) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('検索キーワードを入力してください')),
      );
      return;
    }

    setState(() => _hasSearched = true);
    ref.read(friendProvider.notifier).searchFriends(query);
  }

  Future<void> _sendFriendRequest(String targetUserId) async {
    try {
      await ref.read(friendProvider.notifier).sendFriendRequest(targetUserId);
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text('フレンド申請を送信しました')),
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

  @override
  Widget build(BuildContext context) {
    final friendState = ref.watch(friendProvider);
    final currentFriends = friendState.friends;
    final searchResults = friendState.searchResults;
    final isLoading = friendState.isLoading;
    final error = friendState.error;

    return Scaffold(
      appBar: AppBar(
        title: const Text('フレンドを探す'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          // 検索バー
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: 'ユーザー名またはID',
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      suffixIcon: _searchController.text.isNotEmpty
                          ? IconButton(
                              icon: const Icon(Icons.clear),
                              onPressed: () {
                                _searchController.clear();
                                setState(() => _hasSearched = false);
                              },
                            )
                          : null,
                    ),
                    onChanged: (_) => setState(() {}),
                    onSubmitted: (_) => _performSearch(),
                  ),
                ),
                const SizedBox(width: 8),
                ElevatedButton(
                  onPressed: _performSearch,
                  child: const Icon(Icons.search),
                ),
              ],
            ),
          ),
          // エラーメッセージ
          if (error != null)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.red.shade100,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  error,
                  style: TextStyle(color: Colors.red.shade900),
                ),
              ),
            ),
          // 検索結果
          Expanded(
            child: isLoading
                ? const Center(child: CircularProgressIndicator())
                : _hasSearched
                    ? searchResults.isEmpty
                        ? Center(
                            child: Text(
                              '検索結果が見つかりません',
                              style: Theme.of(context).textTheme.bodyLarge,
                            ),
                          )
                        : ListView.builder(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            itemCount: searchResults.length,
                            itemBuilder: (context, index) {
                              final friend = searchResults[index];
                              final alreadyFriend =
                                  currentFriends.any((f) => f.friendUserId == friend.friendUserId);

                              return _SearchResultTile(
                                friend: friend,
                                alreadyFriend: alreadyFriend,
                                onSendRequest: () => _sendFriendRequest(friend.friendUserId),
                              );
                            },
                          )
                    : Center(
                        child: Text(
                          'ユーザーを検索してください',
                          style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                                color: Colors.grey,
                              ),
                        ),
                      ),
          ),
        ],
      ),
    );
  }
}

class _SearchResultTile extends StatelessWidget {
  final Friend friend;
  final bool alreadyFriend;
  final VoidCallback onSendRequest;

  const _SearchResultTile({
    required this.friend,
    required this.alreadyFriend,
    required this.onSendRequest,
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
        trailing: alreadyFriend
            ? Container(
                padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(4),
                ),
                child: const Text(
                  'フレンド中',
                  style: TextStyle(fontSize: 12),
                ),
              )
            : ElevatedButton(
                onPressed: onSendRequest,
                child: const Text('申請'),
              ),
      ),
    );
  }
}
