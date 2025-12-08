import 'package:a7gzle/core/networking/dio_factory.dart';
import 'package:a7gzle/core/networking/web_services.dart';
import 'package:a7gzle/features/auth/login/data/logic/cubit/login_cubit.dart';
import 'package:a7gzle/features/auth/login/data/repo/login_repo.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;
void setupinjection() {
  //web services
  Dio dio = DioFactory.getDio();
  getIt.registerLazySingleton<WebServices>(() => WebServices(dio));

  //login
  getIt.registerLazySingleton<LoginRepo>(() => LoginRepo(getIt()));
  getIt.registerFactory<LoginCubitCubit>(() => LoginCubitCubit(getIt()));
}
