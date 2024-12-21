import 'package:doc_app/Core/helpers/extensions.dart';
import 'package:doc_app/Core/routing/routes.dart';
import 'package:doc_app/Core/theming/app_colors.dart';
import 'package:doc_app/Core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 50.h,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorsManager.mainBlue,
          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.r),
          ),
        ),
        onPressed: () {
          context.pushNamed(Routes.loginScreen);
        },
        child: Text(
          'Get Started',
          style: TextStyles.font16WhiteSemiBold,
        ),
      ),
    );
  }
}
