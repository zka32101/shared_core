import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

import '../models/screen_time_model.dart';
import '../providers/screen_time_provider.dart';
import '../theme/app_theme_base.dart';

/// Phase 4.21: 保護者向けダッシュボード。
///
/// 子どもの利用時間を監視し、週間グラフ・統計・レポートを表示する
/// 保護者専用の画面。保護者ゲートを通した後に表示される想定。
///
/// ```dart
/// ParentalDashboard(childName: '太郎', primaryColor: kAccentBlue)
/// ```
class ParentalDashboard extends ConsumerWidget {
  final String childName;
  final Color primaryColor;

  const ParentalDashboard({
    super.key,
    required this.childName,
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(screenTimeProvider);
    final settings = state.settings;

    // 週間データを生成（仮・後に Firebase から取得）
    final weekData = _generateWeeklyData(state.usage);

    return Scaffold(
      appBar: AppBar(
        title: Text('$childName さんの学習時間'),
        backgroundColor: primaryColor,
        elevation: 0,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          // 今日の利用時間
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '📱 今日の利用時間',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '${state.usage.usedMinutes} 分',
                            style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.bold,
                              color: primaryColor,
                            ),
                          ),
                          const Text(
                            '利用済み',
                            style: TextStyle(fontSize: 12, color: kTextMuted),
                          ),
                        ],
                      ),
                      if (settings.enabled && settings.dailyLimitMinutes != null)
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            Text(
                              '${settings.dailyLimitMinutes! - state.usage.usedMinutes} 分',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.grey[600],
                              ),
                            ),
                            const Text(
                              '残り',
                              style: TextStyle(fontSize: 12, color: kTextMuted),
                            ),
                          ],
                        ),
                    ],
                  ),
                  if (settings.enabled && settings.dailyLimitMinutes != null)
                    ...[
                      const SizedBox(height: 16),
                      ClipRRect(
                        borderRadius: BorderRadius.circular(8),
                        child: LinearProgressIndicator(
                          value: (state.usage.usedMinutes /
                                  settings.dailyLimitMinutes!)
                              .clamp(0.0, 1.0),
                          minHeight: 8,
                          backgroundColor: Colors.grey[300],
                          valueColor:
                              AlwaysStoppedAnimation<Color>(primaryColor),
                        ),
                      ),
                    ],
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // 週間グラフ
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '📊 週間の利用パターン',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 16),
                  _WeeklyChart(
                    data: weekData,
                    primaryColor: primaryColor,
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // 統計情報
          Card(
            child: Padding(
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    '📈 今週の統計',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  const SizedBox(height: 12),
                  _StatRow(
                    label: '合計利用時間',
                    value: '${weekData.fold<int>(0, (sum, d) => sum + d['minutes'])} 分',
                  ),
                  _StatRow(
                    label: '1日あたりの平均',
                    value:
                        '${(weekData.fold<int>(0, (sum, d) => sum + d['minutes']) / weekData.length).toStringAsFixed(1)} 分',
                  ),
                  _StatRow(
                    label: '最高利用時間',
                    value: '${weekData.map((d) => d['minutes']).reduce((a, b) => a > b ? a : b)} 分',
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 16),

          // 設定情報
          if (settings.enabled)
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      '⚙️ 現在の設定',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                    ),
                    const SizedBox(height: 12),
                    if (settings.dailyLimitMinutes != null)
                      _StatRow(
                        label: '1日の利用上限',
                        value: '${settings.dailyLimitMinutes} 分',
                      ),
                    if (settings.timeSlots.isNotEmpty) ...[
                      _StatRow(
                        label: '時間帯制限',
                        value: '${settings.timeSlots.length} 個',
                      ),
                    ],
                    _StatRow(
                      label: '通知',
                      value: settings.monitoringConfig.notificationsEnabled
                          ? '有効'
                          : '無効',
                    ),
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }

  /// 週間データを生成（実装例）
  /// 実際には Firestore から過去7日分のデータを取得する
  List<Map<String, dynamic>> _generateWeeklyData(ScreenTimeUsage today) {
    final now = DateTime.now();
    final data = <Map<String, dynamic>>[];

    for (int i = 6; i >= 0; i--) {
      final date = now.subtract(Duration(days: i));
      final dateStr = DateFormat('M/d').format(date);
      // 仮のデータ（通常は Firestore から取得）
      final minutes = 30 + (i * 5);

      data.add({
        'date': dateStr,
        'minutes': minutes,
      });
    }

    // 今日のデータを最後に置き換える
    if (data.isNotEmpty) {
      data.last['minutes'] = today.usedMinutes;
    }

    return data;
  }
}

/// 週間グラフを表示するウィジェット。
class _WeeklyChart extends StatelessWidget {
  final List<Map<String, dynamic>> data;
  final Color primaryColor;

  const _WeeklyChart({
    required this.data,
    required this.primaryColor,
  });

  @override
  Widget build(BuildContext context) {
    final maxMinutes =
        data.map((d) => d['minutes'] as int).reduce((a, b) => a > b ? a : b);

    return SizedBox(
      height: 200,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: data
            .map((item) {
              final minutes = item['minutes'] as int;
              final height = (minutes / (maxMinutes > 0 ? maxMinutes : 60)) * 150;

              return Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      width: 32,
                      height: height,
                      decoration: BoxDecoration(
                        color: primaryColor.withOpacity(0.7),
                        borderRadius:
                            const BorderRadius.vertical(top: Radius.circular(4)),
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      item['date'],
                      style: const TextStyle(fontSize: 12, color: kTextMuted),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              );
            })
            .toList(),
      ),
    );
  }
}

/// 統計情報を表示する行。
class _StatRow extends StatelessWidget {
  final String label;
  final String value;

  const _StatRow({
    required this.label,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: const TextStyle(color: kTextMuted, fontSize: 14),
          ),
          Text(
            value,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
        ],
      ),
    );
  }
}
