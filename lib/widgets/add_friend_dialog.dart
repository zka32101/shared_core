import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/friend_request_model.dart';
import '../providers/friend_request_provider.dart';

/// フレンド追加ダイアログ
class AddFriendDialog extends ConsumerStatefulWidget {
  final VoidCallback? onFriendRequestSent;

  const AddFriendDialog({
    this.onFriendRequestSent,
    super.key,
  });

  @override
  ConsumerState<AddFriendDialog> createState() => _AddFriendDialogState();
}

class _AddFriendDialogState extends ConsumerState<AddFriendDialog> {
  final _searchController = TextEditingController();
  List<UserProfile> _searchResults = [];
  bool _isSearching = false;
  bool _isLoading = false;

  @override
  void dispose() {
    _searchController.dispose();
    super.dispose();
  }

  Future<void> _performSearch() async {
    if (_searchController.text.isEmpty) {
      setState(() => _searchResults = []);
      return;
    }

    setState(() => _isSearching = true);
    final results = await ref
        .read(friendRequestProvider.notifier)
        .searchUsers(_searchController.text);
    setState(() {
      _searchResults = results;
      _isSearching = false;
    });
  }

  Future<void> _sendFriendRequest(UserProfile profile) async {
    setState(() => _isLoading = true);
    final success = await ref
        .read(friendRequestProvider.notifier)
        .sendFriendRequest(
          profile.userId,
          profile.name,
          profile.avatarEmoji,
        );
    setState(() => _isLoading = false);

    if (!mounted) return;
    if (success) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('🫱 フレンドリクエストを送信しました'),
          duration: Duration(seconds: 2),
        ),
      );
      widget.onFriendRequestSent?.call();
      if (mounted) Navigator.pop(context);
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('❌ リクエスト送信に失敗しました'),
          duration: Duration(seconds: 2),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('🫱 フレンドを追加'),
      content: SizedBox(
        width: 400,
        child: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 検索フィールド
              TextField(
                controller: _searchController,
                decoration: InputDecoration(
                  hintText: 'ユーザー名で検索',
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: _searchController.text.isNotEmpty
                      ? IconButton(
                          icon: const Icon(Icons.clear),
                          onPressed: () {
                            _searchController.clear();
                            setState(() => _searchResults = []);
                          },
                        )
                      : null,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                onChanged: (_) => setState(() {}),
                onSubmitted: (_) => _performSearch(),
              ),
              const SizedBox(height: 16),

              // 検索ボタン
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: _isSearching ? null : _performSearch,
                  icon: _isSearching
                      ? SizedBox(
                          width: 16,
                          height: 16,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            valueColor:
                                AlwaysStoppedAnimation<Color>(Colors.white),
                          ),
                        )
                      : const Icon(Icons.search),
                  label: _isSearching ? const Text('検索中...') : const Text('検索'),
                ),
              ),
              const SizedBox(height: 16),

              // 検索結果
              if (_searchResults.isEmpty && _searchController.text.isNotEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    '検索結果がありません',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                )
              else if (_searchResults.isNotEmpty)
                SizedBox(
                  height: 300,
                  child: ListView.builder(
                    shrinkWrap: true,
                    itemCount: _searchResults.length,
                    itemBuilder: (context, index) {
                      final profile = _searchResults[index];
                      final isFriend = profile.friendshipStatus ==
                          FriendshipStatus.friends;
                      final isBlocked = profile.friendshipStatus ==
                          FriendshipStatus.blocked;

                      return ListTile(
                        leading: Text(
                          profile.avatarEmoji,
                          style: const TextStyle(fontSize: 24),
                        ),
                        title: Text(profile.name),
                        subtitle: Text(
                          'Lv.${profile.level} · ${profile.completedStages} ステージクリア',
                          style: const TextStyle(fontSize: 12),
                        ),
                        trailing: _isLoading
                            ? const SizedBox(
                                width: 20,
                                height: 20,
                                child: CircularProgressIndicator(
                                  strokeWidth: 2,
                                ),
                              )
                            : isFriend
                                ? const Chip(
                                    label: Text('フレンド'),
                                    backgroundColor: Colors.green,
                                  )
                                : isBlocked
                                    ? const Chip(
                                        label: Text('ブロック'),
                                        backgroundColor: Colors.grey,
                                      )
                                    : OutlinedButton.icon(
                                        onPressed: () =>
                                            _sendFriendRequest(profile),
                                        icon: const Icon(Icons.person_add),
                                        label: const Text('追加'),
                                      ),
                      );
                    },
                  ),
                )
              else if (_searchController.text.isEmpty)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  child: Text(
                    'ユーザー名を入力して検索してください',
                    style: Theme.of(context).textTheme.bodySmall,
                  ),
                ),
            ],
          ),
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('閉じる'),
        ),
      ],
    );
  }
}

/// フレンド追加ボタン（設定画面などで使用）
class AddFriendButton extends ConsumerWidget {
  final VoidCallback? onFriendRequestSent;

  const AddFriendButton({
    this.onFriendRequestSent,
    super.key,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FloatingActionButton.extended(
      onPressed: () {
        showDialog(
          context: context,
          builder: (_) => AddFriendDialog(
            onFriendRequestSent: onFriendRequestSent,
          ),
        );
      },
      icon: const Icon(Icons.person_add),
      label: const Text('フレンド追加'),
    );
  }
}
