import 'package:flutter/material.dart';

class BaseContainer extends StatelessWidget {
  const BaseContainer({
    super.key,
    required this.child,
    required this.width,
    this.height = 60,
    this.margin,
    this.padding = const EdgeInsets.only(left: 16),
    this.onPressed,
  });

  final Widget child;
  final double width;
  final double? height;
  final EdgeInsets? margin;
  final EdgeInsets? padding;

  final Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        width: width,
        height: height,
        margin: margin,
        padding: padding,
        decoration: BoxDecoration(
        color: theme.cardColor, borderRadius: BorderRadius.circular(16)),
        child: child,
    ),
    );
  }
}
