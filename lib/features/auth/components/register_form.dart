import 'package:app_dev_finals/features/auth/screens/login_screen.dart';
import 'package:app_dev_finals/shared/widgets/app_button.dart';
import 'package:app_dev_finals/shared/widgets/app_textfield.dart';
import 'package:app_dev_finals/shared/widgets/clickable_text.dart';
import 'package:flutter/material.dart';

class RegisterForm extends StatelessWidget {
  const RegisterForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "What's your email?",
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        SizedBox(height: 8),
        Text(
          "Enter the email where you can be contacted. "
          "No one will see this on your profile.",
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        SizedBox(height: 26),

        AppTextField(hintText: 'Email'),
        SizedBox(height: 22),
        AppButton(text: 'Next'),
        SizedBox(height: 8),
        AppButton(
          text: 'Sign up with mobile number',
          variant: ButtonVariant.outline,
        ),

        Spacer(),
        Center(
          child: ClickableText(
            text: 'I already have an account',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.blue.shade800,
            ),
            onPress: () {
              Navigator.of(
                context,
              ).push(MaterialPageRoute(builder: (context) => LoginScreen()));
            },
          ),
        ),
      ],
    );
  }
}
