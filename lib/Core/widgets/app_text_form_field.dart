import 'package:doc_app/Core/theming/app_colors.dart';
import 'package:doc_app/Core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AppTextFormField extends StatelessWidget {
  final EdgeInsetsGeometry? contentPadding;
  final OutlineInputBorder? focusedBorder;
  final OutlineInputBorder? enabledBorder;
  final String hintText;
  final bool? isObscureText;
  final Widget? suffixIcon;
  final TextStyle? hintStyle;
  final TextStyle? inputTextStyle;
  final Color? fillColor;

  const AppTextFormField({
    super.key,
    this.contentPadding,
    this.focusedBorder,
    this.enabledBorder,
    required this.hintText,
    this.isObscureText,
    this.suffixIcon,
    this.hintStyle,
    this.inputTextStyle,
    this.fillColor,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        isDense: true,
        contentPadding: contentPadding ??
            EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
        focusedBorder: focusedBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsManager.mainBlue,
                width: 1.3.w,
              ),
            ),
        enabledBorder: enabledBorder ??
            OutlineInputBorder(
              borderRadius: BorderRadius.circular(16.r),
              borderSide: BorderSide(
                color: ColorsManager.lighterGrey,
                width: 1.3.w,
              ),
            ),
        hintStyle: hintStyle ?? TextStyles.font14lightGreyRegular,
        hintText: hintText,
        suffixIcon: suffixIcon,
        fillColor: fillColor ?? ColorsManager.moreLightGrey,
        filled: true,
      ),
      obscureText: isObscureText ?? false,
      style: TextStyles.font14DarkBlueMedium,
    );
  }
}
