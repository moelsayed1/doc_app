import 'package:dio/dio.dart';
import 'package:doc_app/Core/networking/api_constants.dart';
import 'package:doc_app/Features/login/data/models/login_request_body.dart';
import 'package:doc_app/Features/login/data/models/login_response.dart';
import 'package:doc_app/Features/sign_up/data/models/sign_up_request_body.dart';
import 'package:doc_app/Features/sign_up/data/models/sign_up_response.dart';
import 'package:retrofit/error_logger.dart';
import 'package:retrofit/http.dart';

part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @POST(ApiConstants.login)
  Future<LoginResponseModel> login(
    @Body() LoginRequestBody loginRequestBody,
  );

  @POST(ApiConstants.signup)
  Future<SignUpResponse> signup(
    @Body() SignUpRequestBody signUpRequestBody,
  );
}
