import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../networking/api_services_impl.dart';
import '../networking/network_info.dart';

final getIt = GetIt.instance;

Future<void> setupGetit() async {
  // //! feature - signup

  // cubit
  // getIt.registerFactory<SignupCubit>(() => SignupCubit(getIt()));
  //repo
  // getIt.registerLazySingleton<SignupRepo>(
  //   () => SignupRepo(networkInfo: getIt(), signupRemoteDataSource: getIt()),
  // );
  //data source
  // getIt.registerLazySingleton<SignupRemoteDataSource>(
  //   () => SignupRemoteDataSourceImp(apiServicesImpl: getIt()),
  // );

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
