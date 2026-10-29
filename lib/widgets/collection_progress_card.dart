import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../retention/collection.dart';

/// コレクションの進捗（全体バー＋グループ別チップ）。
class CollectionProgressCard extends ConsumerWidget {
  final CollectionSet set;
  final Color color;
  final VoidCallback? onTap;

  const CollectionProgressCard({
    super.key,
    required this.set,
    this.color = const Color(0xFF3B82F6),
    this.onTap,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final collected =
        ref.watch(collectionProvider).collected[set.id] ?? const <String>{};
    final total = set.allItemIds.length;
    final done = set.allItemIds.where(collected.contains).length;
    return Card(
      child: InkWell(
        onTap: onTap,
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(children: [
                Expanded(
                    child: Text(set.title,
                        style: Theme.of(context).textTheme.titleMedium)),
                Text('$done / $total'),
              ]),
              const SizedBox(height: 8),
              LinearProgressIndicator(
                  value: total == 0 ? 0 : done / total, color: color),
              const SizedBox(height: 12),
              Wrap(spacing: 8, runSpacing: 4, children: [
                for (final g in set.groups)
                  Chip(
                    visualDensity: VisualDensity.compact,
                    avatar: g.itemIds.every(collected.contains)
                        ? const Icon(Icons.check_circle, size: 18)
                        : null,
                    label: Text(
                        '${g.name} ${g.itemIds.where(collected.contains).length}/${g.itemIds.length}'),
                  ),
              ]),
            ],
          ),
        ),
      ),
    );
  }
}
