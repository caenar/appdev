import 'package:app_dev_finals/core/layout/screen_layout.dart';
import 'package:app_dev_finals/features/auth/components/login_form.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(child: LoginForm());
  }
}
