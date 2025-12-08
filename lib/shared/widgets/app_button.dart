import 'package:flutter/material.dart';

enum ButtonVariant { filled, outline, ghost }

class AppButton extends StatefulWidget {
  final String text;
  final ButtonVariant? variant;
  final Color? fontColor;
  final Color? outlineColor;
  final VoidCallback? onPressed;

  const AppButton({
    super.key,
    required this.text,
    this.variant = ButtonVariant.filled,
    this.fontColor,
    this.outlineColor,
    this.onPressed,
  });

  @override
  State<AppButton> createState() => _AppButtonState();
}

class _AppButtonState extends State<AppButton> {
  late Color backgroundColor;
  late Border border;
  late Color fontColor;
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    // gotta assign values to variant
    switch (widget.variant) {
      case ButtonVariant.outline:
        backgroundColor = Color(0xFFFFFFFF);
        border = Border.all(
          color: widget.outlineColor ?? Color(0xFFC9CDD6),
          width: 1,
        );
        fontColor = widget.fontColor ?? Colors.black87;
        break;
      case ButtonVariant.ghost:
        backgroundColor = Colors.transparent;
        border = Border.all(color: Colors.transparent);
        fontColor = Colors.black87;
        break;
      case ButtonVariant.filled:
      default:
        backgroundColor = Theme.of(context).colorScheme.tertiary;
        border = Border.all(color: Colors.transparent);
        fontColor = Colors.white;
    }

    // custom button
    return GestureDetector(
      // set flags to the motion of pressing
      onTapDown: (_) => setState(() => _isPressed = true),
      onTapUp: (_) => setState(() => _isPressed = false),
      onTapCancel: () => setState(() => _isPressed = false),

      // set to a null function if none
      onTap: widget.onPressed ?? () {},

      child: AnimatedScale(
        scale: _isPressed ? 0.98 : 1.0, // just a little squeeze
        duration: const Duration(milliseconds: 100),
        child: Container(
          alignment: Alignment.center,
          padding: const EdgeInsets.symmetric(vertical: 14),
          width: double.infinity, // stretch to fit screen width
          decoration: BoxDecoration(
            // change transparency also when tapping
            color: backgroundColor.withOpacity(_isPressed ? 0.9 : 1.0),
            borderRadius: BorderRadius.circular(22),
            border: border,
          ),
          child: Text(
            widget.text,
            style: Theme.of(
              context,
            ).textTheme.labelLarge?.copyWith(color: fontColor),
          ),
        ),
      ),
    );
  }
}
