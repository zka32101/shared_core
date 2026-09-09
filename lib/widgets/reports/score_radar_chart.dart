import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

/// 任意の軸ラベル（3〜8軸程度）とスコアをレーダーチャートで表示する共通ウィジェット。
///
/// 例: 道徳アプリの6徳目スコア、算数アプリの単元別弱点分析など、
/// アプリごとに異なる軸構成を `scores`（軸ラベル → スコア）で汎用的に扱う。
/// 前回スコアとの比較表示（`previousScores`）にも対応する。
///
/// 使用例:
/// ```dart
/// ScoreRadarChartWidget(
///   scores: {
///     '思いやり': 80,
///     '正直さ': 65,
///     '責任感': 90,
///   },
///   primaryColor: AppColors.primary,
/// )
/// ```
class ScoreRadarChartWidget extends StatelessWidget {
  /// 軸ラベル → スコア（0〜`maxScore`）。3〜8エントリ程度を想定。
  /// `Map` の反復順（挿入順）がそのままチャート上の軸の並び順になる。
  final Map<String, double> scores;

  /// 前回スコア（比較表示用）。キーは `scores` と同じ軸ラベルを想定。
  /// 指定しない場合は比較表示を行わない。
  final Map<String, double>? previousScores;

  /// スコアの取りうる最大値（レーダーの外周）。例: 100点満点なら100。
  final double maxScore;

  /// 現在スコアの塗り・線の色。
  final Color primaryColor;

  /// 前回スコアの塗り・線の色。未指定の場合は灰色。
  final Color previousColor;

  /// グラフの高さ。
  final double height;

  /// 目盛りの分割数。
  final int tickCount;

  /// タイトル（カード見出し）。未指定の場合は表示しない。
  final String? title;

  /// タイトルの文字色・スタイル。
  final TextStyle? titleStyle;

  /// 軸ラベルの文字色・スタイル。
  final TextStyle? axisLabelStyle;

  /// 凡例（今回/前回）に使うラベル。
  final String currentLegendLabel;
  final String previousLegendLabel;

  const ScoreRadarChartWidget({
    super.key,
    required this.scores,
    required this.primaryColor,
    this.previousScores,
    this.maxScore = 100,
    this.previousColor = Colors.grey,
    this.height = 240,
    this.tickCount = 4,
    this.title,
    this.titleStyle,
    this.axisLabelStyle,
    this.currentLegendLabel = '今回',
    this.previousLegendLabel = '前回',
  });

  @override
  Widget build(BuildContext context) {
    if (scores.isEmpty) return const SizedBox.shrink();

    final labels = scores.keys.toList();
    final hasPrevious = previousScores != null && previousScores!.isNotEmpty;

    // fl_chart の RadarChartData は最大値の指定方法がバージョンによって異なるため
    // （0.68.0 系では radarMaxValue が存在しない）、ここで maxScore を 0〜100 の
    // 割合に正規化してから渡すことで、対応バージョンによらず「外周 = maxScore」の
    // 見た目を安定させる。
    double normalize(double raw) => maxScore > 0 ? (raw / maxScore) * 100 : 0;

    final chart = SizedBox(
      height: height,
      child: RadarChart(
        RadarChartData(
          dataSets: [
            RadarDataSet(
              fillColor: primaryColor.withAlpha(50),
              borderColor: primaryColor,
              borderWidth: 2,
              entryRadius: 4,
              dataEntries: [
                for (final label in labels)
                  RadarEntry(value: normalize(scores[label] ?? 0)),
              ],
            ),
            if (hasPrevious)
              RadarDataSet(
                fillColor: previousColor.withAlpha(30),
                borderColor: previousColor.withAlpha(200),
                borderWidth: 2,
                entryRadius: 3,
                dataEntries: [
                  for (final label in labels)
                    RadarEntry(value: normalize(previousScores![label] ?? 0)),
                ],
              ),
          ],
          tickCount: tickCount,
          ticksTextStyle: TextStyle(fontSize: 8, color: Colors.grey.shade600),
          gridBorderData: BorderSide(color: Colors.grey.shade300, width: 1),
          titleTextStyle: axisLabelStyle ??
              const TextStyle(fontSize: 11, fontWeight: FontWeight.w600),
          getTitle: (index, angle) {
            if (index < 0 || index >= labels.length) {
              return const RadarChartTitle(text: '');
            }
            return RadarChartTitle(text: labels[index]);
          },
        ),
      ),
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (title != null || hasPrevious)
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (title != null)
                Text(
                  title!,
                  style: titleStyle ??
                      const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                ),
              if (hasPrevious) _Legend(
                primaryColor: primaryColor,
                previousColor: previousColor,
                currentLegendLabel: currentLegendLabel,
                previousLegendLabel: previousLegendLabel,
              ),
            ],
          ),
        if (title != null || hasPrevious) const SizedBox(height: 16),
        chart,
      ],
    );
  }
}

class _Legend extends StatelessWidget {
  final Color primaryColor;
  final Color previousColor;
  final String currentLegendLabel;
  final String previousLegendLabel;

  const _Legend({
    required this.primaryColor,
    required this.previousColor,
    required this.currentLegendLabel,
    required this.previousLegendLabel,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        _legendDot(primaryColor.withAlpha(50)),
        const SizedBox(width: 4),
        Text(currentLegendLabel, style: const TextStyle(fontSize: 10, color: Colors.grey)),
        const SizedBox(width: 12),
        _legendDot(previousColor.withAlpha(50)),
        const SizedBox(width: 4),
        Text(previousLegendLabel, style: const TextStyle(fontSize: 10, color: Colors.grey)),
      ],
    );
  }

  Widget _legendDot(Color color) {
    return Container(
      width: 12,
      height: 12,
      decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(2)),
    );
  }
}
