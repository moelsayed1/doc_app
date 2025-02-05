import 'package:doc_app/Core/helpers/spacing.dart';
import 'package:doc_app/Core/theming/styles.dart';
import 'package:doc_app/Core/widgets/app_elevated_button.dart';
import 'package:doc_app/Features/login/logic/login_cubit.dart';
import 'package:doc_app/Features/login/widgets/dont_have_account_text.dart';
import 'package:doc_app/Features/login/widgets/email_and_password.dart';
import 'package:doc_app/Features/login/widgets/login_bloc_listener.dart';
import 'package:doc_app/Features/login/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 30.h),
          child: SingleChildScrollView(
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
                Column(
                  children: [
                    const EmailAndPassword(),
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
                      onPressed: () {
                        validateThenDoLogin(context);
                      },
                      child: Text(
                        'Login',
                        style: TextStyles.font16WhiteSemiBold,
                      ),
                    ),
                    verticalSpace(20.h),
                    TermsAndConditionsText(),
                    verticalSpace(40.h),
                    DoNotHaveAccountText(),
                    LoginBlocListener(),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  void validateThenDoLogin(BuildContext context) {
    if (context.read<LoginCubit>().formKey.currentState!.validate()) {
      context.read<LoginCubit>().emitLoginStates();
    }
  }
}
