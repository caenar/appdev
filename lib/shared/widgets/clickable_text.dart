import 'package:flutter/material.dart';

class ClickableText extends StatelessWidget {
  final String text;
  final VoidCallback? onPress;
  final TextStyle? style;

  const ClickableText({
    super.key,
    required this.text,
    this.onPress,
    this.style,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress ?? () {},
      child: Text(text, style: style),
    );
  }
}
