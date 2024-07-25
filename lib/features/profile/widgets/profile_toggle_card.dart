import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:gethigh/ui/widgets/widgets.dart';

class ProfileToggleCard extends StatelessWidget {
  const ProfileToggleCard({
    super.key,
    required this.title,
    required this.value,
    required this.onChanged,
  });

  final String title;
  final bool value;
  final ValueChanged<bool> onChanged;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return BaseContainer(
        width: double.infinity,
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        margin: const EdgeInsets.symmetric(horizontal: 16,),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: theme.textTheme.bodyMedium
            ),
            CupertinoSwitch(
              value: value,
              onChanged: (value) {}
            ),
          ],
        ));
  }
}
