import 'package:eae_mobile/core/di/dependency_injection.dart';
import 'package:eae_mobile/features/auth/logic/login_cubit.dart';
import 'package:eae_mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:eae_mobile/features/splash/logic/splash_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../features/secure_access/logic/secure_access_cubit.dart';
import '../../features/secure_access/presentation/screens/secure_access_screen.dart';
import '../../features/splash/presentation/screens/splash_screen.dart';
import 'routes.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SplashCubit>(),
            child: const SplashScreen(),
          ),
        );

      case Routes.secureAccessScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SecureAccessCubit>(),
            child: const SecureAccessScreen(),
          ),
        );

      case Routes.loginScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginScreen(),
          ),
        );

      default:
        return null;
    }
  }
}
