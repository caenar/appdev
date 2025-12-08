import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  final String text;
  final Color? color;
  final TextStyle? style;
  final VoidCallback? onPress;

  const ClickableText({
    super.key,
    required this.text,
    this.color,
    this.style,
    this.onPress,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ?? () {},
      child: Text(
        text,
        style:
            style ??
            Theme.of(
              context,
            ).textTheme.labelLarge?.copyWith(color: color ?? Colors.black),
      ),
    );
  }
}
