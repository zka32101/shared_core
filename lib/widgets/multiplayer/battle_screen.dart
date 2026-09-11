import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../models/multiplayer_model.dart';
import '../../providers/battle_session_provider.dart';

/// バトル画面（対戦進行中）。
///
/// 2人のプレイヤーがリアルタイムで問題に回答する画面。
/// 各ラウンドごとにスコアを表示し、全ラウンド終了後に結果画面へ遷移する。
class BattleScreen extends ConsumerStatefulWidget {
  final String sessionId;

  /// ラウンド完了時のコールバック
  final VoidCallback? onRoundComplete;

  /// 対戦完了時のコールバック
  final ValueChanged<String?>? onBattleComplete; // winnerId

  const BattleScreen({
    required this.sessionId,
    this.onRoundComplete,
    this.onBattleComplete,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<BattleScreen> createState() => _BattleScreenState();
}

class _BattleScreenState extends ConsumerState<BattleScreen> {
  @override
  Widget build(BuildContext context) {
    final battleAsync = ref.watch(activeBattleSessionProvider(widget.sessionId));

    return battleAsync.when(
      data: (battle) => Scaffold(
        appBar: AppBar(
          title: Text('バトル - ラウンド ${battle.currentRound}/${battle.totalRounds}'),
          centerTitle: true,
          automaticallyImplyLeading: false,
        ),
        body: Column(
          children: [
            // スコアボード
            _ScoreBoard(session: battle),
            const Divider(height: 1),

            // 問題・回答エリア
            Expanded(
              child: Center(
                child: _QuestionDisplay(session: battle),
              ),
            ),

            // 下部操作パネル
            Padding(
              padding: const EdgeInsets.all(16),
              child: Text(
                battle.status == MatchStatus.finished
                    ? '対戦終了'
                    : battle.status == MatchStatus.inProgress
                        ? '回答中...'
                        : '待機中...',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ),
          ],
        ),
      ),
      loading: () => Scaffold(
        appBar: AppBar(title: const Text('バトル読み込み中...')),
        body: const Center(child: CircularProgressIndicator()),
      ),
      error: (err, stack) => Scaffold(
        appBar: AppBar(title: const Text('エラー')),
        body: Center(child: Text('エラー: $err')),
      ),
    );
  }
}

/// スコアボード（双方のスコア表示）。
class _ScoreBoard extends StatelessWidget {
  final BattleSession session;

  const _ScoreBoard({required this.session});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16),
      color: Colors.grey[100],
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          _PlayerScoreCard(
            name: session.player1Name,
            score: session.player1CurrentScore,
            rating: session.player1Rating,
            isWinning: session.player1CurrentScore > session.player2CurrentScore,
          ),
          Column(
            children: [
              Text(
                'VS',
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 8),
              Text(
                '${session.currentRound}/${session.totalRounds}',
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ],
          ),
          _PlayerScoreCard(
            name: session.player2Name,
            score: session.player2CurrentScore,
            rating: session.player2Rating,
            isWinning: session.player2CurrentScore > session.player1CurrentScore,
          ),
        ],
      ),
    );
  }
}

/// プレイヤーのスコアカード。
class _PlayerScoreCard extends StatelessWidget {
  final String name;
  final int score;
  final int rating;
  final bool isWinning;

  const _PlayerScoreCard({
    required this.name,
    required this.score,
    required this.rating,
    required this.isWinning,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          name,
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
                fontWeight: FontWeight.bold,
                color: isWinning ? Colors.blue : Colors.grey,
              ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          decoration: BoxDecoration(
            color: isWinning ? Colors.blue[100] : Colors.grey[200],
            borderRadius: BorderRadius.circular(8),
            border: isWinning
                ? Border.all(color: Colors.blue, width: 2)
                : Border.all(color: Colors.grey[400]!, width: 1),
          ),
          child: Text(
            '$score点',
            style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: isWinning ? Colors.blue[800] : Colors.grey[700],
                ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          'レート: $rating',
          style: Theme.of(context).textTheme.bodySmall?.copyWith(
                color: Colors.grey[600],
              ),
        ),
      ],
    );
  }
}

/// 問題表示エリア（アプリ側で具体的な問題コンテンツを実装）。
class _QuestionDisplay extends StatelessWidget {
  final BattleSession session;

  const _QuestionDisplay({required this.session});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.all(24),
          child: Text(
            '問題 ${session.currentRound}',
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(
                  fontWeight: FontWeight.bold,
                ),
          ),
        ),
        const SizedBox(height: 24),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Text(
            '（アプリ側で具体的な問題を実装してください）',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                  fontStyle: FontStyle.italic,
                  color: Colors.grey[600],
                ),
          ),
        ),
        const SizedBox(height: 24),
        if (session.status == MatchStatus.finished)
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 32),
            child: Text(
              session.winnerId == null
                  ? '引き分け'
                  : '勝者: ${session.winnerId == session.player1Id ? session.player1Name : session.player2Name}',
              style: Theme.of(context).textTheme.titleLarge?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
            ),
          ),
      ],
    );
  }
}
