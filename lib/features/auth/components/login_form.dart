import 'package:app_dev_finals/features/auth/screens/register_screen.dart';
import 'package:flutter/material.dart';
import 'package:app_dev_finals/shared/widgets/app_button.dart';
import 'package:app_dev_finals/shared/widgets/clickable_text.dart';
import 'package:app_dev_finals/shared/widgets/logo.dart';
import 'package:app_dev_finals/shared/widgets/app_textfield.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // this part should take up space
        Flexible(
          child: Align(alignment: Alignment.center, child: AppLogo()),
        ),

        // fill up all remaining space
        Expanded(
          // twice the amount of space taken by the logo above
          flex: 2,
          child: Center(
            child: Column(
              // maximize to take up space, and give the effect of center
              mainAxisSize: MainAxisSize.max,
              children: [
                AppTextField(hintText: 'Username, email, or mobile number'),
                SizedBox(height: 12),
                AppTextField(hintText: 'Password', obscureText: true),
                SizedBox(height: 12),
                AppButton(text: 'Log In'),
                SizedBox(height: 16),
                ClickableText(
                  text: 'Forgot password?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.black87,
                  ),
                ),
              ],
            ),
          ),
        ),

        // this should just be at the bottom, no need for flexing
        Center(
          child: AppButton(
            text: 'Create new account',
            variant: ButtonVariant.outline,
            fontColor: Colors.blue.shade900,
            outlineColor: Colors.blue.shade900,
            onPressed: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => RegisterScreen()));
            },
          ),
        ),
      ],
    );
  }
}
