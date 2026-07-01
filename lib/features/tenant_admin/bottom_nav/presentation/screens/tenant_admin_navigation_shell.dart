import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/di/dependency_injection.dart';
import '../../../roles_and_security/logic/roles_and_security_cubit.dart';
import '../../../roles_and_security/presentation/screens/roles_and_security_screen.dart';
import '../../../users_management/logic/users_management_cubit.dart';
import '../../../users_management/presentation/screens/users_management_screen.dart';
import '../widgets/tenant_admin_bottom_nav_bar.dart';
import '../widgets/tenant_admin_placeholder_screen.dart';

class TenantAdminNavigationShell extends StatefulWidget {
  final int initialIndex;

  const TenantAdminNavigationShell({super.key, required this.initialIndex});

  @override
  State<TenantAdminNavigationShell> createState() =>
      _TenantAdminNavigationShellState();
}

class _TenantAdminNavigationShellState
    extends State<TenantAdminNavigationShell> {
  late int currentIndex;

  @override
  void initState() {
    super.initState();
    currentIndex = widget.initialIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralColor,
      body: IndexedStack(
        index: currentIndex,
        children: [
          BlocProvider(
            create: (_) => getIt<UsersManagementCubit>(),
            child: const UsersManagementScreen(),
          ),
          BlocProvider(
            create: (_) => getIt<RolesAndSecurityCubit>(),
            child: const RolesAndSecurityScreen(),
          ),
          const TenantAdminPlaceholderScreen(
            icon: Icons.settings_outlined,
            title: 'Tenant Settings',
            subtitle: 'Tenant settings will be added here later.',
          ),
        ],
      ),
      bottomNavigationBar: TenantAdminBottomNavBar(
        currentIndex: currentIndex,
        onTap: (index) {
          if (index == currentIndex) return;

          setState(() {
            currentIndex = index;
          });
        },
        items: const [
          TenantAdminBottomNavItem(
            label: 'USERS',
            icon: Icons.manage_accounts_outlined,
          ),
          TenantAdminBottomNavItem(
            label: 'ROLES',
            icon: Icons.admin_panel_settings_outlined,
          ),
          TenantAdminBottomNavItem(
            label: 'SETTINGS',
            icon: Icons.settings_outlined,
          ),
        ],
      ),
    );
  }
}
