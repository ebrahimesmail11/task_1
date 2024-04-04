import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:pro_mina/core/networking/api_service.dart';
import 'package:pro_mina/core/networking/dio_factory.dart';
import 'package:pro_mina/features/auth/data/repos/login_repo.dart';
import 'package:pro_mina/features/auth/logic/cubit/login_cubit.dart';

final getIt = GetIt.instance;
Future<void> setupGetIt() async {
  // Dio & ApiService
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<ApiService>(() => ApiService(dio));

  // login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt()));
}
