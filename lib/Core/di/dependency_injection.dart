import 'package:dio/dio.dart';
import 'package:doc_app/Core/networking/api_service.dart';
import 'package:doc_app/Core/networking/dio_factory.dart';
import 'package:doc_app/Features/login/data/repos/login_repo.dart';
import 'package:doc_app/Features/login/logic/login_cubit.dart';
import 'package:doc_app/Features/sign_up/data/repos/sign_up_repo.dart';
import 'package:doc_app/Features/sign_up/logic/sign_up_cubit.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt<ApiService>()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt<LoginRepo>()));

  // signup
  getIt.registerLazySingleton<SignUpRepo>(() => SignUpRepo(getIt<ApiService>()));
  getIt.registerFactory<SignUpCubit>(() => SignUpCubit(getIt<SignUpRepo>()));
}