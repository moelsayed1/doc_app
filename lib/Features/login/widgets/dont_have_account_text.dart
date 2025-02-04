import 'package:doc_app/Core/routing/routes.dart';
import 'package:doc_app/Core/theming/styles.dart';
import 'package:flutter/material.dart';

class DoNotHaveAccountText extends StatelessWidget {
  const DoNotHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, Routes.signUpScreen);
      },
      child: RichText(
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
      ),
    );
  }
}
