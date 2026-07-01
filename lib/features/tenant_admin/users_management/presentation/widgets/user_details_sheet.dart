import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/public_widgets/loading_widget.dart';
import '../../data/models/users_management_response.dart';
import '../../logic/users_management_cubit.dart';
import 'users_management_sheet_scaffold.dart';

class UserDetailsSheet extends StatelessWidget {
  const UserDetailsSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return UsersManagementSheetScaffold(
      title: 'User details',
      subtitle: 'Review account profile and tenant status.',
      child: BlocBuilder<UsersManagementCubit, UsersManagementState>(
        builder: (context, state) {
          final user = state.maybeWhen(
            userLoaded: (response) => response.data,
            orElse: () => null,
          );
          final error = state.maybeWhen(
            error: (error) => error,
            orElse: () => null,
          );

          if (error != null) {
            return Text(
              error,
              style: AppTextStyles.font14DarkGreyRegular.copyWith(
                color: AppColors.redWarring,
              ),
            );
          }

          if (user == null) {
            return SizedBox(height: 180.h, child: const LoadingWidget());
          }

          return _UserDetailsContent(user: user);
        },
      ),
    );
  }
}

class _UserDetailsContent extends StatelessWidget {
  final UserManagementUser user;

  const _UserDetailsContent({required this.user});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        _DetailRow(label: 'Name', value: '${user.firstName} ${user.lastName}'),
        _DetailRow(label: 'Email', value: user.email),
        _DetailRow(label: 'User type', value: user.userType),
        _DetailRow(label: 'Status', value: user.status),
        _DetailRow(label: 'Tenant ID', value: user.tenantId),
        _DetailRow(
          label: 'External employee ID',
          value: user.externalEmployeeId ?? '-',
        ),
        _DetailRow(label: 'Department ID', value: user.departmentId ?? '-'),
        _DetailRow(label: 'Last login', value: user.lastLoginAt ?? '-'),
        _DetailRow(label: 'Created at', value: user.createdAt),
        _DetailRow(label: 'Updated at', value: user.updatedAt),
      ],
    );
  }
}

class _DetailRow extends StatelessWidget {
  final String label;
  final String value;

  const _DetailRow({required this.label, required this.value});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(vertical: 10.h),
      decoration: BoxDecoration(
        border: Border(bottom: BorderSide(color: AppColors.tertiaryColor2)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            label,
            style: AppTextStyles.font12DarkGreySemiBold.copyWith(
              color: AppColors.tertiaryColor6,
            ),
          ),
          verticalSpace(4),
          Text(
            value,
            style: AppTextStyles.font14DarkGreyRegular.copyWith(
              color: AppColors.primaryColor9,
            ),
          ),
        ],
      ),
    );
  }
}
