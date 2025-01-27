import 'package:doc_app/Core/helpers/spacing.dart';
import 'package:doc_app/Core/theming/styles.dart';
import 'package:doc_app/Core/widgets/app_elevated_button.dart';
import 'package:doc_app/Core/widgets/app_text_form_field.dart';
import 'package:doc_app/Features/login/widgets/already_have_account_text.dart';
import 'package:doc_app/Features/login/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final formKey = GlobalKey<FormState>();

  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Welcome',
                style: TextStyles.font24BlueBold,
              ),
              verticalSpace(8),
              Text(
                'We’re excited to have you back, can’t wait to\nsee what you’ve been up to since you last\nlogged in.',
                style: TextStyles.font14lightGreyRegular,
              ),
              verticalSpace(36),
              Form(
                key: formKey,
                child: Column(
                  children: [
                    AppTextFormField(hintText: 'Email'),
                    verticalSpace(18),
                    AppTextFormField(
                      hintText: 'Password',
                      isObscureText: isObscureText,
                      suffixIcon: GestureDetector(
                        onTap: () {
                          setState(() {
                            isObscureText = !isObscureText;
                          });
                        },
                        child: Icon(isObscureText
                            ? Icons.visibility_off
                            : Icons.visibility),
                      ),
                    ),
                    verticalSpace(20),
                    Align(
                      alignment: AlignmentDirectional.centerEnd,
                      child: TextButton(
                        onPressed: () {},
                        child: Text(
                          'Forgot Password?',
                          style: TextStyles.font13BlueRegular,
                        ),
                      ),
                    ),
                    verticalSpace(40),
                    AppElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'Login',
                        style: TextStyles.font16WhiteSemiBold,
                      ),
                    ),
                    verticalSpace(20.h),
                    TermsAndConditionsText(),
                    verticalSpace(40.h),
                    AlreadyHaveAccountText(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
