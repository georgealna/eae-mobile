import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../features/auth/logic/login_cubit.dart';
import '../../features/secure_access/logic/secure_access_cubit.dart';
import '../../features/splash/logic/splash_cubit.dart';
import '../networking/api_services_impl.dart';
import '../networking/network_info.dart';

final getIt = GetIt.instance;

Future<void> setupGetit() async {
  // //! feature - splash
  // cubit
  getIt.registerFactory<SplashCubit>(() => SplashCubit());

  // //! feature - secure access
  // cubit
  getIt.registerFactory<SecureAccessCubit>(() => SecureAccessCubit());

  // //! feature - auth
  // cubit
  getIt.registerFactory<LoginCubit>(() => LoginCubit());

  //! Core

  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(internetConnectionChecker: getIt()),
  );

  getIt.registerLazySingleton(() => ApiServicesImpl());

  //! External

  final sharedPreference = await SharedPreferences.getInstance();
  getIt.registerLazySingleton(() => sharedPreference);
  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => InternetConnectionChecker.createInstance());
}
