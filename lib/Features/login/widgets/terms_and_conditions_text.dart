import 'package:doc_app/Core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TermsAndConditionsText extends StatelessWidget {
  const TermsAndConditionsText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: 'By logging in, you agree to our',
            style: TextStyles.font13greyRegular,
          ),
          TextSpan(
            text: ' Terms and Conditions',
            style: TextStyles.font13DarkBlueMedium,
          ),
          TextSpan(
            text: ' and',
            style: TextStyles.font13greyRegular.copyWith(height: 1.5.h),
          ),
          TextSpan(
            text: ' Privacy Policy',
            style: TextStyles.font13DarkBlueMedium,
          ),
        ]
      ),
    );
  }
}
