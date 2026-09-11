import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../providers/matchmaking_provider.dart';
import '../../providers/battle_session_provider.dart';

/// マッチメイキング画面。
///
/// 対戦相手を探している間の待機画面。
/// タイムアウト（デフォルト60秒）またはマッチが成立すると別画面に遷移する。
class MatchmakingScreen extends ConsumerStatefulWidget {
  /// 教科（sansu, kokugo等）
  final String subject;

  /// ユーザーの現在レート
  final int userRating;

  /// マッチメイキング成功時のコールバック
  final ValueChanged<String>? onMatchFound;

  /// マッチメイキング失敗時のコールバック
  final VoidCallback? onTimeout;

  const MatchmakingScreen({
    required this.subject,
    required this.userRating,
    this.onMatchFound,
    this.onTimeout,
    Key? key,
  }) : super(key: key);

  @override
  ConsumerState<MatchmakingScreen> createState() => _MatchmakingScreenState();
}

class _MatchmakingScreenState extends ConsumerState<MatchmakingScreen>
    with TickerProviderStateMixin {
  late AnimationController _pulseController;
  late Timer _timerTick;
  int _elapsedSeconds = 0;
  int _maxWaitSeconds = 60;

  @override
  void initState() {
    super.initState();
    _pulseController = AnimationController(
      duration: const Duration(milliseconds: 800),
      vsync: this,
    )..repeat(reverse: true);

    // 秒数カウント
    _timerTick = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (!mounted) return;
      setState(() => _elapsedSeconds++);

      if (_elapsedSeconds >= _maxWaitSeconds) {
        timer.cancel();
        _pulseController.dispose();
        widget.onTimeout?.call();
        if (mounted) Navigator.pop(context);
      }
    });

    // マッチメイキング開始
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (!mounted) return;
      ref.read(matchmakingProvider.notifier).startSearching(
            userId: 'current_user_id', // アプリ側で実装
            displayName: 'Player',
            rating: widget.userRating.toDouble(),
            metadata: {'subject': widget.subject},
          );
    });
  }

  @override
  void dispose() {
    _pulseController.dispose();
    _timerTick.cancel();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final matchmaking = ref.watch(matchmakingProvider);

    // マッチが成立したら battle_screen へ遷移
    ref.listen(matchmakingProvider, (previous, next) {
      if (previous?.status != next.status && next.status == MatchmakingStatus.matched) {
        if (next.matchId != null) {
          widget.onMatchFound?.call(next.matchId!);
          _timerTick.cancel();
          _pulseController.dispose();
        }
      } else if (next.status == MatchmakingStatus.error) {
        widget.onTimeout?.call();
      }
    });

    final progressPercent = _elapsedSeconds / _maxWaitSeconds;

    return Scaffold(
      appBar: AppBar(
        title: const Text('マッチメイキング中...'),
        centerTitle: true,
        automaticallyImplyLeading: true,
      ),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // パルスする対戦アイコン
              ScaleTransition(
                scale: Tween<double>(begin: 0.8, end: 1.2).animate(
                  CurvedAnimation(parent: _pulseController, curve: Curves.easeInOut),
                ),
                child: const Text('🎮', style: TextStyle(fontSize: 60)),
              ),
              const SizedBox(height: 24),
              Text(
                '相手を探しています...',
                style: Theme.of(context).textTheme.titleLarge?.copyWith(
                      fontWeight: FontWeight.bold,
                    ),
              ),
              const SizedBox(height: 12),
              Text(
                '$_elapsedSeconds秒経過',
                style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                      color: Colors.grey[600],
                    ),
              ),
              const SizedBox(height: 24),

              // プログレスバー
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 32),
                child: LinearProgressIndicator(value: progressPercent),
              ),
              const SizedBox(height: 12),
              Text(
                'タイムアウト: $_maxWaitSeconds秒',
                style: Theme.of(context).textTheme.bodySmall,
              ),

              const SizedBox(height: 36),

              // ステータス表示
              if (matchmaking.status == MatchmakingStatus.searching)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    '同じレート帯の相手を探しています...',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          fontStyle: FontStyle.italic,
                        ),
                  ),
                ),
              if (matchmaking.status == MatchmakingStatus.error)
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 32),
                  child: Text(
                    matchmaking.errorMessage ?? '対戦相手が見つかりませんでした',
                    textAlign: TextAlign.center,
                    style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                          color: Colors.red,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),

              const SizedBox(height: 36),

              // キャンセルボタン
              ElevatedButton.icon(
                onPressed: () {
                  _timerTick.cancel();
                  _pulseController.dispose();
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.close),
                label: const Text('キャンセル'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red[400],
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
