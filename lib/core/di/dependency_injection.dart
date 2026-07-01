import 'package:dio/dio.dart';

import 'package:get_it/get_it.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';

import '../../features/candidate/assessment_inventory/data/datasources/assessment_inventory_remote_data_source.dart';
import '../../features/candidate/assessment_inventory/data/repos/assessment_inventory_repo.dart';
import '../../features/auth/data/datasources/auth_remote_data_source.dart';
import '../../features/auth/data/repos/auth_repo.dart';
import '../../features/auth/logic/forgot_password/forgot_password_cubit.dart';
import '../../features/auth/logic/login/login_cubit.dart';
import '../../features/auth/logic/register/register_cubit.dart';
import '../../features/auth/logic/reset_password/reset_password_cubit.dart';
import '../../features/candidate/assessment_inventory/logic/assessment_inventory_details/assessment_inventory_details_cubit.dart';
import '../../features/candidate/assessment_inventory/logic/assessment_inventory/assessment_inventory_cubit.dart';
import '../../features/analytics/logic/analytics_cubit.dart';
import '../../features/settings/logic/settings_cubit.dart';
import '../../features/candidate/assessment_setup/logic/assessment_setup_cubit.dart';
import '../../features/candidate/assessment_session/logic/assessment_session_cubit.dart';
import '../../features/candidate/forensics_checkpoint/logic/forensics_checkpoint_cubit.dart';
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
  // datasource
  getIt.registerLazySingleton<AuthRemoteDataSource>(
    () => AuthRemoteDataSourceImpl(apiServicesImpl: getIt()),
  );
  // repo
  getIt.registerLazySingleton<AuthRepo>(
    () => AuthRepo(authRemoteDataSource: getIt(), networkInfo: getIt()),
  );
  // cubit
  getIt.registerFactory<LoginCubit>(() => LoginCubit(authRepo: getIt()));
  getIt.registerFactory<RegisterCubit>(() => RegisterCubit(authRepo: getIt()));
  getIt.registerFactory<ForgotPasswordCubit>(
    () => ForgotPasswordCubit(authRepo: getIt()),
  );
  getIt.registerFactoryParam<ResetPasswordCubit, String, void>(
    (email, _) => ResetPasswordCubit(authRepo: getIt(), initialEmail: email),
  );

  // //! feature - assessment inventory
  // datasource
  getIt.registerLazySingleton<AssessmentInventoryRemoteDataSource>(
    () => AssessmentInventoryRemoteDataSourceImpl(apiServicesImpl: getIt()),
  );
  // repo
  getIt.registerLazySingleton<AssessmentInventoryRepo>(
    () => AssessmentInventoryRepo(
      assessmentInventoryRemoteDataSource: getIt(),
      networkInfo: getIt(),
    ),
  );
  // cubit
  getIt.registerFactory<AssessmentInventoryCubit>(
    () => AssessmentInventoryCubit(assessmentInventoryRepo: getIt()),
  );
  getIt.registerFactory<AssessmentInventoryDetailsCubit>(
    () => AssessmentInventoryDetailsCubit(assessmentInventoryRepo: getIt()),
  );

  // //! feature - analytics
  // cubit
  getIt.registerFactory<AnalyticsCubit>(() => AnalyticsCubit());

  // //! feature - settings
  // cubit
  getIt.registerFactory<SettingsCubit>(() => SettingsCubit());

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
