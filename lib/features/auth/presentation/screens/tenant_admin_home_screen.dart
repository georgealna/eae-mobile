import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/routing/routes.dart';

class TenantAdminHomeScreen extends StatelessWidget {
  const TenantAdminHomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const _RoleHomeView(
      icon: Icons.admin_panel_settings_outlined,
      title: 'Tenant Admin Portal',
      subtitle:
          'Manage institution configuration, candidates, evaluators, and assessment governance.',
    );
  }
}

class _RoleHomeView extends StatelessWidget {
  final IconData icon;
  final String title;
  final String subtitle;

  const _RoleHomeView({
    required this.icon,
    required this.title,
    required this.subtitle,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralColor,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 24.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 54.w,
                height: 54.w,
                decoration: BoxDecoration(
                  color: AppColors.secondaryColor2,
                  borderRadius: BorderRadius.circular(16.r),
                ),
                child: Icon(
                  icon,
                  color: AppColors.secondaryColor7,
                  size: 28.sp,
                ),
              ),
              verticalSpace(18),
              Text(
                title,
                style: AppTextStyles.font32DarkGreyMedium.copyWith(
                  color: AppColors.primaryColor9,
                  fontWeight: FontWeight.w700,
                  height: 1.08,
                ),
              ),
              verticalSpace(10),
              Text(
                subtitle,
                style: AppTextStyles.font14DarkGreyRegular.copyWith(
                  color: AppColors.tertiaryColor6,
                  height: 1.5,
                ),
              ),
              verticalSpace(24),
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16.r),
                decoration: BoxDecoration(
                  color: AppColors.neutralColor,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(color: AppColors.tertiaryColor2),
                ),
                child: Text(
                  'Role-specific modules will be connected here.',
                  style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                    color: AppColors.primaryColor9,
                  ),
                ),
              ),
              verticalSpace(14),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, Routes.usersManagementScreen);
                  },
                  icon: const Icon(Icons.group_outlined),
                  label: const Text('Users Management'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.secondaryColor7,
                    foregroundColor: AppColors.neutralColor,
                    padding: EdgeInsets.symmetric(vertical: 14.h),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.r),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
