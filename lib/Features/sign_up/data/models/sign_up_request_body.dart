import 'package:freezed_annotation/freezed_annotation.dart';

part 'sign_up_request_body.g.dart';

@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final String password;
  final String phone;
  @JsonKey(name: 'password_confirmation')
  final String confirmPassword;
  final int gender;

  SignUpRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.phone,
    required this.confirmPassword,
    required this.gender,
  });

  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);

}