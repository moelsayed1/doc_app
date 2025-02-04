import 'package:doc_app/Features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doc_app/Features/sign_up/logic/sign_up_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../data/models/sign_up_request_body.dart';

class SignUpCubit extends Cubit<SignUpState> {
  final SignUpRepo _signUpRepo;

  SignUpCubit(this._signUpRepo) : super(const SignUpState.initial());

  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController confirmPasswordController = TextEditingController();
  TextEditingController nameController = TextEditingController();
  TextEditingController phoneController = TextEditingController();

  final formKey = GlobalKey<FormState>();

  void emitSignUpState() async {
    emit(SignUpState.signUpLoading());
    final response = await _signUpRepo.signup(
      SignUpRequestBody(
        email: emailController.text,
        password: passwordController.text,
        confirmPassword: confirmPasswordController.text,
        name: nameController.text,
        phone: phoneController.text,
        gender: 0,
      ),
    );
    response.when(
      success: (signupResponse) {
        emit(SignUpState.signUpSuccess(signupResponse));
      },
      failure: (error) {
        emit(SignUpState.signUpError(error: error.apiErrorModel.message));
      },
    );
  }
}
