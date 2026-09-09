import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

/// 週次（または任意日数）の指標を棒グラフで表示する共通ウィジェット。
///
/// 学習時間・正解数・獲得ポイントなど、アプリごとに異なる指標を
/// `values` + `labels` の組で汎用的に扱う。
///
/// 使用例:
/// ```dart
/// WeeklyBarChartWidget(
///   values: const [10, 25, 0, 40, 15, 30, 20],
///   labels: const ['月', '火', '水', '木', '金', '土', '日'],
///   primaryColor: AppColors.primary,
///   valueSuffix: '分',
/// )
/// ```
class WeeklyBarChartWidget extends StatelessWidget {
  /// 各バーの値（日数ぶん）。`labels` と同じ長さである必要がある。
  final List<double> values;

  /// 各バーの下に表示するラベル（曜日名など）。`values` と同じ長さである必要がある。
  final List<String> labels;

  /// バーの基本色。`barColorForValue` を指定しない場合はこの色が使われる。
  final Color primaryColor;

  /// 値に応じてバーの色を変えたい場合に指定する（例: 高スコアは緑、低スコアは赤）。
  /// 指定しない場合は常に `primaryColor` が使われる。
  final Color Function(double value)? barColorForValue;

  /// グラフの高さ。
  final double height;

  /// Y軸の最大値。未指定の場合は `values` の最大値から自動計算する。
  final double? maxY;

  /// Y軸の最小値。
  final double minY;

  /// ツールチップ・軸ラベルに付与する単位（例: '点', '分', '問'）。
  final String valueSuffix;

  /// ツールチップの値を整数表示するか（true）、小数第1位まで表示するか（false）。
  final bool showIntegerValues;

  /// タイトル（カード見出し）。未指定の場合は表示しない。
  final String? title;

  /// タイトルの文字色・スタイル。
  final TextStyle? titleStyle;

  /// ラベル（下部軸）の文字色・スタイル。
  final TextStyle? labelStyle;

  /// 値（左軸）の文字色・スタイル。
  final TextStyle? axisValueStyle;

  const WeeklyBarChartWidget({
    super.key,
    required this.values,
    required this.labels,
    required this.primaryColor,
    this.barColorForValue,
    this.height = 160,
    this.maxY,
    this.minY = 0,
    this.valueSuffix = '',
    this.showIntegerValues = true,
    this.title,
    this.titleStyle,
    this.labelStyle,
    this.axisValueStyle,
  }) : assert(
          values.length == labels.length,
          'values と labels は同じ長さである必要があります',
        );

  @override
  Widget build(BuildContext context) {
    if (values.isEmpty) return const SizedBox.shrink();

    final resolvedMaxY = maxY ??
        (() {
          final rawMax = values.fold<double>(0, (m, v) => v > m ? v : m);
          if (rawMax <= 0) return 10.0;
          // 上部に余白を持たせつつ、キリの良い値に丸める。
          final padded = rawMax * 1.2;
          return padded;
        })();

    final barGroups = <BarChartGroupData>[
      for (var i = 0; i < values.length; i++)
        BarChartGroupData(
          x: i,
          barRods: [
            BarChartRodData(
              toY: values[i],
              color: barColorForValue?.call(values[i]) ?? primaryColor,
              width: 18,
              borderRadius: const BorderRadius.vertical(top: Radius.circular(4)),
            ),
          ],
        ),
    ];

    final chart = SizedBox(
      height: height,
      child: BarChart(
        BarChartData(
          barGroups: barGroups,
          maxY: resolvedMaxY,
          minY: minY,
          gridData: FlGridData(
            show: true,
            drawVerticalLine: false,
            getDrawingHorizontalLine: (v) =>
                FlLine(color: Colors.grey.withAlpha(60), strokeWidth: 1),
          ),
          titlesData: FlTitlesData(
            leftTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                reservedSize: 32,
                getTitlesWidget: (v, _) => Text(
                  '${v.round()}',
                  style: axisValueStyle ??
                      TextStyle(fontSize: 10, color: Colors.grey.shade600),
                ),
              ),
            ),
            bottomTitles: AxisTitles(
              sideTitles: SideTitles(
                showTitles: true,
                getTitlesWidget: (v, _) {
                  final index = v.round();
                  if (index < 0 || index >= labels.length) {
                    return const SizedBox.shrink();
                  }
                  return Padding(
                    padding: const EdgeInsets.only(top: 4),
                    child: Text(
                      labels[index],
                      style: labelStyle ??
                          TextStyle(fontSize: 11, color: Colors.grey.shade600),
                    ),
                  );
                },
              ),
            ),
            topTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
            rightTitles: const AxisTitles(sideTitles: SideTitles(showTitles: false)),
          ),
          borderData: FlBorderData(show: false),
          barTouchData: BarTouchData(
            touchTooltipData: BarTouchTooltipData(
              getTooltipItem: (group, groupIndex, rod, rodIndex) => BarTooltipItem(
                showIntegerValues
                    ? '${rod.toY.round()}$valueSuffix'
                    : '${rod.toY.toStringAsFixed(1)}$valueSuffix',
                const TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );

    if (title == null) return chart;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title!,
          style: titleStyle ??
              const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 12),
        chart,
      ],
    );
  }
}
