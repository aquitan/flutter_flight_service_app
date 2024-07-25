import 'package:flutter/material.dart';
import 'package:gethigh/ui/ui.dart';

class HotTicket extends StatelessWidget {
  const HotTicket({
    super.key,
    this.width,
    this.height
  });

  final double? width;
  final double? height;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
        padding: const EdgeInsets.all(12),
        width: 200,
        height: 200,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Title',
              style: theme.textTheme.bodyLarge
                  ?.copyWith(fontWeight: FontWeight.w700, fontSize: 18),
            ),
            Wrap(
              children: [
                Text(
                  'Content',
                  style: theme.textTheme.bodySmall,
                ),
                const SizedBox(
                  width: 5,
                ),
                Text(
                  'Content',
                  style: theme.textTheme.bodySmall,
                ),
              ],
            )
          ],
        ));
  }
}
