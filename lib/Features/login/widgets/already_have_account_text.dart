import 'package:doc_app/Core/theming/styles.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'Don\'t have an account? ',
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: 'Sign Up',
            style: TextStyles.font13BlueSemiBold,
          ),
        ],
      ),
    );
  }
}
