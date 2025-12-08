import 'package:app_dev_finals/core/layout/screen_layout.dart';
import 'package:app_dev_finals/features/auth/components/register_form.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      // as reference to IG, there's no footer in register?
      showFooter: false,
      child: RegisterForm(),
    );
  }
}
