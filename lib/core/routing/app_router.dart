import 'package:eae_mobile/core/di/dependency_injection.dart';
import 'package:eae_mobile/features/assessment_inventory/logic/assessment_inventory_cubit.dart';
import 'package:eae_mobile/features/assessment_inventory/presentation/screens/assessment_inventory_screen.dart';
import 'package:eae_mobile/features/assessment_inventory/presentation/screens/assessment_selection_screen.dart';
import 'package:eae_mobile/features/auth/logic/login_cubit.dart';
import 'package:eae_mobile/features/auth/presentation/screens/login_screen.dart';
import 'package:eae_mobile/features/assessment_setup/logic/assessment_setup_cubit.dart';
import 'package:eae_mobile/features/assessment_setup/presentation/screens/assessment_setup_screen.dart';
import 'package:eae_mobile/features/assessment_session/logic/assessment_session_cubit.dart';
import 'package:eae_mobile/features/assessment_session/presentation/screens/assessment_session_screen.dart';
import 'package:eae_mobile/features/forensics_checkpoint/logic/forensics_checkpoint_cubit.dart';
import 'package:eae_mobile/features/forensics_checkpoint/presentation/screens/forensics_checkpoint_screen.dart';
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

      case Routes.assessmentInventoryScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AssessmentInventoryCubit>(),
            child: const AssessmentInventoryScreen(),
          ),
        );

      case Routes.assessmentSelectionScreen:
        return MaterialPageRoute(
          builder: (_) => const AssessmentSelectionScreen(),
        );

      case Routes.forensicsCheckpointScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<ForensicsCheckpointCubit>(),
            child: const ForensicsCheckpointScreen(),
          ),
        );

      case Routes.assessmentSetupScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AssessmentSetupCubit>(),
            child: const AssessmentSetupScreen(),
          ),
        );

      case Routes.assessmentSessionScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<AssessmentSessionCubit>(),
            child: const AssessmentSessionScreen(),
          ),
        );

      default:
        return null;
    }
  }
}
