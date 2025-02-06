import 'package:doc_app/Core/theming/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppElevatedButton extends StatelessWidget {
  final void Function() onPressed;
  final ButtonStyle? style;
  final Color? backgroundColor;
  final double? width;
  final double? height;
  final Widget child;

  const AppElevatedButton({
    super.key,
    required this.onPressed,
    this.width,
    this.height,
    this.style,
    this.backgroundColor,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width ?? double.infinity,
      height: height ?? 50.h,
      child: ElevatedButton(
        onPressed: onPressed,
        style: style ??
            ElevatedButton.styleFrom(
              backgroundColor: ColorsManager.mainBlue,
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16.r),
              ),
            ),
        child: child,
        ),
    );
  }
}
