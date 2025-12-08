import 'package:app_dev_finals/features/auth/screens/login_screen.dart';
import 'package:app_dev_finals/features/auth/screens/register_screen.dart';
import 'package:app_dev_finals/shared/constants/spacing.dart';
import 'package:app_dev_finals/shared/widgets/app_button.dart';
import 'package:flutter/material.dart';

class OnboardingContent extends StatelessWidget {
  const OnboardingContent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SizedBox(height: AppSpacing.xl),

        // just for fun
        Text('English (US)', style: Theme.of(context).textTheme.bodySmall),

        Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center, // center content
            children: [
              Text(
                'Join Instagram',
                style: Theme.of(context).textTheme.displayMedium,
              ),
              SizedBox(height: AppSpacing.sm),
              Text(
                "Share what you're into with the people who get you.",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),

        AppButton(
          text: 'Get started',
          onPressed: () {
            // route to register
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => RegisterScreen()));
          },
        ),
        SizedBox(height: AppSpacing.sm),
        AppButton(
          text: 'I already have an account',
          variant: ButtonVariant.outline,
          onPressed: () {
            // route to login
            Navigator.of(
              context,
            ).push(MaterialPageRoute(builder: (context) => LoginScreen()));
          },
        ),
      ],
    );
  }
}
