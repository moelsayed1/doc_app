import 'package:doc_app/Core/helpers/extensions.dart';
import 'package:doc_app/Core/routing/routes.dart';
import 'package:doc_app/Core/theming/app_colors.dart';
import 'package:doc_app/Core/theming/styles.dart';
import 'package:doc_app/Features/login/logic/login_cubit.dart';
import 'package:doc_app/Features/login/logic/login_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginBlocListener extends StatelessWidget {
  const LoginBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<LoginCubit, LoginState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
                context: context,
                builder: (context) {
                  return const Center(
                    child: CircularProgressIndicator(
                      color: ColorsManager.mainBlue,
                    ),
                  );
                });
          },
          success: (loginResponse) {
            context.pop();
            context.pushNamed(Routes.homeScreen);
          },
          error: (error) {
            context.pop();
            showDialog(
                context: context,
                builder: (context) {
                  return buildAlertDialog(error, context);
                });
          },
        );
      },
      child: SizedBox.shrink(),
    );
  }

  AlertDialog buildAlertDialog(String error, BuildContext context) {
    return AlertDialog(
                  icon: Icon(
                    Icons.error,
                    color: Colors.red,
                    size: 32,
                  ),
                  content: Text(
                    error,
                    style: TextStyles.font15DarkBlueMedium,
                  ),
                  actions: [
                    TextButton(
                      onPressed: () {
                        context.pop();
                      },
                      child: Text(
                        'Got it',
                        style: TextStyles.font14BlueSemiBold,
                      ),
                    )
                  ],
                );
  }
}
