import 'package:flutter/material.dart';

class AppTextField extends StatelessWidget {
  final String hintText;
  final bool obscureText;
  final TextEditingController? controller; // putting this here..

  const AppTextField({
    super.key,
    required this.hintText,
    this.obscureText = false,
    this.controller, // but won't really use it
  });

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: Theme.of(
          context,
        ).textTheme.bodyMedium?.copyWith(color: const Color(0xFF424D64)),
        contentPadding: const EdgeInsets.symmetric(
          vertical: 16.0,
          horizontal: 14.0,
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide(color: const Color(0xFFC9CDD6), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14.0),
          borderSide: BorderSide(color: const Color(0xFF2F3033), width: 1),
        ),
      ),
    );
  }
}
