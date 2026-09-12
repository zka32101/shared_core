import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../models/notification_model.dart';
import '../services/notification_service.dart';

class NotificationSettingsScreen extends ConsumerStatefulWidget {
  final String userId;
  final Color? primaryColor;

  const NotificationSettingsScreen({
    required this.userId,
    this.primaryColor,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<NotificationSettingsScreen> createState() =>
      _NotificationSettingsScreenState();
}

class _NotificationSettingsScreenState
    extends ConsumerState<NotificationSettingsScreen> {
  late final NotificationService _notificationService;
  late NotificationPreferences _preferences;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _notificationService = NotificationService();
    _loadPreferences();
  }

  Future<void> _loadPreferences() async {
    try {
      final prefs =
          await _notificationService.getNotificationPreferences(widget.userId);
      setState(() {
        _preferences = prefs ??
            NotificationPreferences(
              userId: widget.userId,
              enableAllNotifications: true,
              typePreferences: {},
              preferredNotificationTime: '09:00',
              enableQuietHours: false,
              quietHoursStart: null,
              quietHoursEnd: null,
              enableAppNotifications: true,
              enableEmailDigest: false,
              emailDigestFrequency: 'never',
              updatedAt: DateTime.now(),
            );
        _isLoading = false;
      });
    } catch (e) {
      setState(() => _isLoading = false);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('設定の読み込みに失敗しました: $e')),
      );
    }
  }

  Future<void> _savePreferences() async {
    try {
      await _notificationService.updateNotificationPreferences(
        widget.userId,
        _preferences.copyWith(updatedAt: DateTime.now()),
      );
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('設定を保存しました')),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('設定の保存に失敗しました: $e')),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    final primaryColor = this.primaryColor ?? Theme.of(context).primaryColor;

    if (_isLoading) {
      return Scaffold(
        appBar: AppBar(title: const Text('通知設定')),
        body: const Center(child: CircularProgressIndicator()),
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('通知設定'),
        centerTitle: true,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 全体設定
            _SettingsSection(
              title: '通知全般',
              children: [
                SwitchListTile(
                  title: const Text('すべての通知を有効'),
                  subtitle: const Text('プッシュ通知とメール通知'),
                  value: _preferences.enableAllNotifications,
                  onChanged: (value) {
                    setState(() {
                      _preferences = _preferences.copyWith(
                        enableAllNotifications: value,
                      );
                    });
                  },
                ),
                SwitchListTile(
                  title: const Text('アプリ内通知を有効'),
                  value: _preferences.enableAppNotifications,
                  onChanged: (value) {
                    setState(() {
                      _preferences = _preferences.copyWith(
                        enableAppNotifications: value,
                      );
                    });
                  },
                ),
              ],
            ),
            const SizedBox(height: 24),

            // 通知時間設定
            _SettingsSection(
              title: '通知時間',
              children: [
                ListTile(
                  title: const Text('通知送信時刻'),
                  subtitle: Text(_preferences.preferredNotificationTime ?? '指定なし'),
                  trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                  onTap: () async {
                    final time = await showTimePicker(
                      context: context,
                      initialTime: TimeOfDay.now(),
                    );
                    if (time != null) {
                      setState(() {
                        _preferences = _preferences.copyWith(
                          preferredNotificationTime:
                              '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}',
                        );
                      });
                    }
                  },
                ),
              ],
            ),
            const SizedBox(height: 24),

            // 静かな時間設定
            _SettingsSection(
              title: '静かな時間',
              children: [
                SwitchListTile(
                  title: const Text('静かな時間を設定'),
                  subtitle: const Text('指定時間帯は通知を送信しません'),
                  value: _preferences.enableQuietHours,
                  onChanged: (value) {
                    setState(() {
                      _preferences = _preferences.copyWith(
                        enableQuietHours: value,
                      );
                    });
                  },
                ),
                if (_preferences.enableQuietHours) ...[
                  ListTile(
                    title: const Text('開始時刻'),
                    subtitle:
                        Text(_preferences.quietHoursStart ?? '22:00'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () async {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      if (time != null) {
                        setState(() {
                          _preferences = _preferences.copyWith(
                            quietHoursStart:
                                '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}',
                          );
                        });
                      }
                    },
                  ),
                  ListTile(
                    title: const Text('終了時刻'),
                    subtitle:
                        Text(_preferences.quietHoursEnd ?? '07:00'),
                    trailing: const Icon(Icons.arrow_forward_ios, size: 16),
                    onTap: () async {
                      final time = await showTimePicker(
                        context: context,
                        initialTime: TimeOfDay.now(),
                      );
                      if (time != null) {
                        setState(() {
                          _preferences = _preferences.copyWith(
                            quietHoursEnd:
                                '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}',
                          );
                        });
                      }
                    },
                  ),
                ],
              ],
            ),
            const SizedBox(height: 24),

            // メール通知設定
            _SettingsSection(
              title: 'メール通知',
              children: [
                SwitchListTile(
                  title: const Text('ダイジェストメールを受け取る'),
                  value: _preferences.enableEmailDigest,
                  onChanged: (value) {
                    setState(() {
                      _preferences = _preferences.copyWith(
                        enableEmailDigest: value,
                      );
                    });
                  },
                ),
                if (_preferences.enableEmailDigest)
                  ListTile(
                    title: const Text('配信頻度'),
                    trailing: DropdownButton<String>(
                      value: _preferences.emailDigestFrequency,
                      items: const [
                        DropdownMenuItem(
                          value: 'daily',
                          child: Text('毎日'),
                        ),
                        DropdownMenuItem(
                          value: 'weekly',
                          child: Text('毎週'),
                        ),
                        DropdownMenuItem(
                          value: 'never',
                          child: Text('受け取らない'),
                        ),
                      ],
                      onChanged: (value) {
                        if (value != null) {
                          setState(() {
                            _preferences = _preferences.copyWith(
                              emailDigestFrequency: value,
                            );
                          });
                        }
                      },
                    ),
                  ),
              ],
            ),
            const SizedBox(height: 32),

            // 保存ボタン
            SizedBox(
              width: double.infinity,
              child: ElevatedButton.icon(
                onPressed: _savePreferences,
                icon: const Icon(Icons.save),
                label: const Text('設定を保存'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryColor,
                  padding: const EdgeInsets.symmetric(vertical: 16),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _SettingsSection extends StatelessWidget {
  final String title;
  final List<Widget> children;

  const _SettingsSection({
    required this.title,
    required this.children,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
              ),
        ),
        const SizedBox(height: 8),
        Card(
          elevation: 2,
          child: Column(children: children),
        ),
      ],
    );
  }
}
