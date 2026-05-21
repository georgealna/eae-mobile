import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../features/auth/logic/login_cubit.dart';
import '../../features/assessment_inventory/logic/assessment_inventory_cubit.dart';
import '../../features/assessment_setup/logic/assessment_setup_cubit.dart';
import '../../features/assessment_session/logic/assessment_session_cubit.dart';
import '../../features/forensics_checkpoint/logic/forensics_checkpoint_cubit.dart';
import '../../features/secure_access/logic/secure_access_cubit.dart';
import '../../features/splash/logic/splash_cubit.dart';
import '../helpers/app_shared_preferences.dart';
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

  // //! feature - assessment inventory
  // cubit
  getIt.registerFactory<AssessmentInventoryCubit>(
    () => AssessmentInventoryCubit(),
  );

  // //! feature - forensics checkpoint
  // cubit
  getIt.registerFactory<ForensicsCheckpointCubit>(
    () => ForensicsCheckpointCubit(),
  );

  // //! feature - assessment setup
  // cubit
  getIt.registerFactory<AssessmentSetupCubit>(() => AssessmentSetupCubit());

  // //! feature - competency task
  // cubit
  getIt.registerFactory<AssessmentSessionCubit>(() => AssessmentSessionCubit());

  //! Core

  getIt.registerLazySingleton<NetworkInfo>(
    () => NetworkInfoImp(internetConnectionChecker: getIt()),
  );

  getIt.registerLazySingleton(() => ApiServicesImpl());
  getIt.registerSingleton<AppSharedPreferences>(AppSharedPreferences());

  //! External

  getIt.registerLazySingleton(() => Dio());
  getIt.registerLazySingleton(() => InternetConnectionChecker.createInstance());
}
