import 'package:flutter/material.dart';
import 'package:gethigh/ui/ui.dart';

class SugestedDirection extends StatelessWidget {
  const SugestedDirection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return BaseContainer(
      margin: const EdgeInsets.symmetric(horizontal: 16).copyWith(bottom: 16),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Card',
            style: TextStyle(color: theme.hintColor),
          ),
          IconButton(onPressed: () {}, icon: const Icon(Icons.next_week_sharp))
        ],
      ),
    );
  }
}
