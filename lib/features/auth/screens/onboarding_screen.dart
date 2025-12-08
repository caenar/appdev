import 'package:app_dev_finals/core/layout/screen_layout.dart';
import 'package:app_dev_finals/features/auth/components/onboarding_content.dart';
import 'package:flutter/material.dart';

class OnboardingScreen extends StatelessWidget {
  const OnboardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenLayout(
      // no need for a back button, this is the first screen to show up
      showBackButton: false,
      child: OnboardingContent()
    );
  }
}
