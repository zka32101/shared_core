import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../models/screen_time_model.dart';
import '../providers/screen_time_provider.dart';
import '../theme/app_theme_base.dart';

/// Phase 4.21: 時間帯別の利用制限を設定するウィジェット。
///
/// 保護者向け設定画面に組み込む想定。平日/休日ごとに
/// 朝・昼・夜などの時間帯を設定可能。
///
/// ```dart
/// TimeSlotSettingsWidget(primaryColor: kAccentBlue)
/// ```
class TimeSlotSettingsWidget extends ConsumerWidget {
  final Color primaryColor;

  const TimeSlotSettingsWidget({
    super.key,
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(screenTimeProvider);
    final notifier = ref.read(screenTimeProvider.notifier);
    final settings = state.settings;
    final timeSlots = settings.timeSlots;

    // 曜日別に分類
    final weekdaySlots =
        timeSlots.where((ts) => ts.dayType == 'weekday').toList();
    final weekendSlots =
        timeSlots.where((ts) => ts.dayType == 'weekend').toList();

    return ListView(
      padding: const EdgeInsets.all(20),
      children: [
        // 平日設定
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '📅 平日の利用制限',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () =>
                          _showAddTimeSlotDialog(context, ref, 'weekday'),
                      icon: const Icon(Icons.add, size: 18),
                      label: const Text('追加'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                if (weekdaySlots.isEmpty)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      '制限なし',
                      style: TextStyle(color: kTextMuted, fontSize: 14),
                    ),
                  )
                else
                  Column(
                    children: weekdaySlots
                        .map((slot) => _TimeSlotTile(
                              slot: slot,
                              onEdit: () =>
                                  _showEditTimeSlotDialog(context, ref, slot),
                              onDelete: () =>
                                  notifier.removeTimeSlot(slot),
                            ))
                        .toList(),
                  ),
              ],
            ),
          ),
        ),
        const SizedBox(height: 16),

        // 休日設定
        Card(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      '🎉 休日の利用制限',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    ElevatedButton.icon(
                      onPressed: () =>
                          _showAddTimeSlotDialog(context, ref, 'weekend'),
                      icon: const Icon(Icons.add, size: 18),
                      label: const Text('追加'),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: primaryColor,
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 8),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 12),
                if (weekendSlots.isEmpty)
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 8),
                    child: Text(
                      '制限なし',
                      style: TextStyle(color: kTextMuted, fontSize: 14),
                    ),
                  )
                else
                  Column(
                    children: weekendSlots
                        .map((slot) => _TimeSlotTile(
                              slot: slot,
                              onEdit: () =>
                                  _showEditTimeSlotDialog(context, ref, slot),
                              onDelete: () =>
                                  notifier.removeTimeSlot(slot),
                            ))
                        .toList(),
                  ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  void _showAddTimeSlotDialog(
    BuildContext context,
    WidgetRef ref,
    String dayType,
  ) {
    showDialog(
      context: context,
      builder: (_) => _TimeSlotDialog(
        dayType: dayType,
        onSave: (slot) =>
            ref.read(screenTimeProvider.notifier).addTimeSlot(slot),
      ),
    );
  }

  void _showEditTimeSlotDialog(
    BuildContext context,
    WidgetRef ref,
    TimeSlot slot,
  ) {
    showDialog(
      context: context,
      builder: (_) => _TimeSlotDialog(
        dayType: slot.dayType,
        initialSlot: slot,
        onSave: (updatedSlot) {
          ref.read(screenTimeProvider.notifier).removeTimeSlot(slot);
          ref.read(screenTimeProvider.notifier).addTimeSlot(updatedSlot);
        },
      ),
    );
  }
}

/// 時間帯ごとの制限を表示するタイル。
class _TimeSlotTile extends StatelessWidget {
  final TimeSlot slot;
  final VoidCallback onEdit;
  final VoidCallback onDelete;

  const _TimeSlotTile({
    required this.slot,
    required this.onEdit,
    required this.onDelete,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: const Icon(Icons.schedule, color: kTextMuted),
      title: Text('${slot.startTime} ～ ${slot.endTime}'),
      subtitle: Text(
        slot.limitMinutes == null
            ? '無制限'
            : '上限: ${slot.limitMinutes} 分',
        style: const TextStyle(fontSize: 13, color: kTextMuted),
      ),
      trailing: PopupMenuButton<String>(
        onSelected: (value) {
          if (value == 'edit') {
            onEdit();
          } else if (value == 'delete') {
            onDelete();
          }
        },
        itemBuilder: (BuildContext context) => [
          const PopupMenuItem(
            value: 'edit',
            child: Text('編集'),
          ),
          const PopupMenuItem(
            value: 'delete',
            child: Text('削除', style: TextStyle(color: Colors.red)),
          ),
        ],
      ),
    );
  }
}

/// 時間帯制限を追加/編集するダイアログ。
class _TimeSlotDialog extends StatefulWidget {
  final String dayType;
  final TimeSlot? initialSlot;
  final Function(TimeSlot) onSave;

  const _TimeSlotDialog({
    required this.dayType,
    this.initialSlot,
    required this.onSave,
  });

  @override
  State<_TimeSlotDialog> createState() => _TimeSlotDialogState();
}

class _TimeSlotDialogState extends State<_TimeSlotDialog> {
  late TimeOfDay _startTime;
  late TimeOfDay _endTime;
  late int? _limitMinutes;

  @override
  void initState() {
    super.initState();
    if (widget.initialSlot != null) {
      final parts = widget.initialSlot!.startTime.split(':');
      _startTime = TimeOfDay(hour: int.parse(parts[0]), minute: int.parse(parts[1]));

      final endParts = widget.initialSlot!.endTime.split(':');
      _endTime = TimeOfDay(hour: int.parse(endParts[0]), minute: int.parse(endParts[1]));

      _limitMinutes = widget.initialSlot!.limitMinutes;
    } else {
      _startTime = const TimeOfDay(hour: 9, minute: 0);
      _endTime = const TimeOfDay(hour: 12, minute: 0);
      _limitMinutes = null;
    }
  }

  String _formatTime(TimeOfDay time) =>
      '${time.hour.toString().padLeft(2, '0')}:${time.minute.toString().padLeft(2, '0')}';

  @override
  Widget build(BuildContext context) {
    final dayLabel = widget.dayType == 'weekday' ? '平日' : '休日';

    return AlertDialog(
      title: Text('$dayLabel の時間帯を設定'),
      content: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ListTile(
              title: const Text('開始時刻'),
              trailing: TextButton(
                onPressed: () async {
                  final picked = await showTimePicker(
                    context: context,
                    initialTime: _startTime,
                  );
                  if (picked != null) setState(() => _startTime = picked);
                },
                child: Text(_formatTime(_startTime)),
              ),
            ),
            ListTile(
              title: const Text('終了時刻'),
              trailing: TextButton(
                onPressed: () async {
                  final picked = await showTimePicker(
                    context: context,
                    initialTime: _endTime,
                  );
                  if (picked != null) setState(() => _endTime = picked);
                },
                child: Text(_formatTime(_endTime)),
              ),
            ),
            ListTile(
              title: const Text('利用時間制限（分）'),
              subtitle: Text(_limitMinutes == null ? '無制限' : '$_limitMinutes 分'),
              trailing: ElevatedButton(
                onPressed: () => _showLimitDialog(),
                child: const Text('設定'),
              ),
            ),
          ],
        ),
      ),
      actions: [
        TextButton(
          onPressed: () => Navigator.pop(context),
          child: const Text('キャンセル'),
        ),
        ElevatedButton(
          onPressed: () {
            final slot = TimeSlot(
              dayType: widget.dayType,
              startTime: _formatTime(_startTime),
              endTime: _formatTime(_endTime),
              limitMinutes: _limitMinutes,
            );
            widget.onSave(slot);
            Navigator.pop(context);
          },
          child: const Text('保存'),
        ),
      ],
    );
  }

  void _showLimitDialog() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('利用時間制限'),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Slider(
              value: (_limitMinutes ?? 30).toDouble(),
              min: 5,
              max: 180,
              divisions: 35,
              label: '${_limitMinutes ?? 30} 分',
              onChanged: (value) {
                setState(() => _limitMinutes = value.toInt());
                Navigator.pop(context);
              },
            ),
            Text(
              '${_limitMinutes ?? 30} 分',
              style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ],
        ),
      ),
    );
  }
}
