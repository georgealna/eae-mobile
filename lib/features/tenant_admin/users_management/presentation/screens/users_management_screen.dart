import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/text_styles.dart';
import '../../../../../core/helpers/spacing.dart';
import '../../../../../core/public_widgets/loading_widget.dart';
import '../../../../../core/public_widgets/snack_bar_widget.dart';
import '../../logic/users_management_cubit.dart';
import '../widgets/create_user_sheet.dart';
import '../widgets/invite_user_sheet.dart';
import '../widgets/reset_user_password_sheet.dart';
import '../widgets/user_details_sheet.dart';
import '../widgets/user_management_card.dart';
import '../widgets/users_management_header.dart';

class UsersManagementScreen extends StatefulWidget {
  const UsersManagementScreen({super.key});

  @override
  State<UsersManagementScreen> createState() => _UsersManagementScreenState();
}

class _UsersManagementScreenState extends State<UsersManagementScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralColor,
      body: SafeArea(
        child: BlocConsumer<UsersManagementCubit, UsersManagementState>(
          listener: (context, state) {
            state.maybeWhen(
              createSuccess: (_) {
                showAppSnackBar(context, 'User created successfully');
                context.read<UsersManagementCubit>().getUsers();
              },
              inviteSuccess: (_) {
                showAppSnackBar(context, 'Invitation sent successfully');
                context.read<UsersManagementCubit>().getUsers();
              },
              actionSuccess: (_) {
                showAppSnackBar(context, 'Action completed successfully');
                context.read<UsersManagementCubit>().getUsers();
              },
              error: (error) => showAppSnackBar(context, error),
              orElse: () {},
            );
          },
          builder: (screenContext, state) {
            final users = state.maybeWhen(
              usersLoaded: (response) => response.data,
              orElse: () => null,
            );
            final isLoading = state.maybeWhen(
              loading: () => true,
              orElse: () => false,
            );

            if (users == null && isLoading) {
              return const LoadingWidget();
            }

            if (users == null) {
              return _UsersManagementErrorView(
                onRetry: screenContext.read<UsersManagementCubit>().getUsers,
              );
            }

            return Stack(
              children: [
                RefreshIndicator(
                  onRefresh: screenContext.read<UsersManagementCubit>().getUsers,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(
                      horizontal: 24.w,
                      vertical: 18.h,
                    ),
                    itemCount: users.length + 1,
                    separatorBuilder: (_, _) => verticalSpace(12),
                    itemBuilder: (_, index) {
                      if (index == 0) {
                        return UsersManagementHeader(
                          onCreateUser: () =>
                              _showCreateUserSheet(screenContext),
                          onInviteUser: () =>
                              _showInviteUserSheet(screenContext),
                        );
                      }

                      final user = users[index - 1];
                      return UserManagementCard(
                        user: user,
                        onDetails: () => _showUserDetailsSheet(
                          context: screenContext,
                          userId: user.id,
                        ),
                        onResetPassword: () => _showResetPasswordSheet(
                          context: screenContext,
                          userId: user.id,
                          userName: '${user.firstName} ${user.lastName}',
                        ),
                        onDeactivate: user.isActive
                            ? () => _confirmDeactivateUser(
                                context: screenContext,
                                userId: user.id,
                                userName: '${user.firstName} ${user.lastName}',
                              )
                            : null,
                      );
                    },
                  ),
                ),
                if (isLoading)
                  Positioned.fill(
                    child: ColoredBox(
                      color: AppColors.neutralColor.withValues(alpha: 0.65),
                      child: const LoadingWidget(),
                    ),
                  ),
              ],
            );
          },
        ),
      ),
    );
  }

  Future<void> _showCreateUserSheet(BuildContext context) async {
    final cubit = context.read<UsersManagementCubit>();

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.neutralColor,
      builder: (_) => BlocProvider.value(
        value: cubit,
        child: const CreateUserSheet(),
      ),
    );
  }

  Future<void> _showInviteUserSheet(BuildContext context) async {
    final cubit = context.read<UsersManagementCubit>();

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.neutralColor,
      builder: (_) => BlocProvider.value(
        value: cubit,
        child: const InviteUserSheet(),
      ),
    );
  }

  Future<void> _showUserDetailsSheet({
    required BuildContext context,
    required String userId,
  }) async {
    final cubit = context.read<UsersManagementCubit>();

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.neutralColor,
      builder: (_) => BlocProvider.value(
        value: cubit..getUserDetails(userId),
        child: const UserDetailsSheet(),
      ),
    );

    if (context.mounted) {
      cubit.getUsers();
    }
  }

  Future<void> _showResetPasswordSheet({
    required BuildContext context,
    required String userId,
    required String userName,
  }) async {
    final cubit = context.read<UsersManagementCubit>();

    await showModalBottomSheet<void>(
      context: context,
      isScrollControlled: true,
      backgroundColor: AppColors.neutralColor,
      builder: (_) => BlocProvider.value(
        value: cubit,
        child: ResetUserPasswordSheet(userId: userId, userName: userName),
      ),
    );
  }

  Future<void> _confirmDeactivateUser({
    required BuildContext context,
    required String userId,
    required String userName,
  }) async {
    final confirmed = await showDialog<bool>(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text('Deactivate user'),
        content: Text('Deactivate $userName?'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Cancel'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Deactivate'),
          ),
        ],
      ),
    );

    if ((confirmed ?? false) && context.mounted) {
      final cubit = context.read<UsersManagementCubit>();
      cubit.deactivateUser(userId);
    }
  }
}

class _UsersManagementErrorView extends StatelessWidget {
  final VoidCallback onRetry;

  const _UsersManagementErrorView({required this.onRetry});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(24.r),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Unable to load users',
              textAlign: TextAlign.center,
              style: AppTextStyles.font14DarkGreyRegular.copyWith(
                color: AppColors.tertiaryColor7,
              ),
            ),
            verticalSpace(16),
            TextButton(
              onPressed: onRetry,
              child: Text(
                'Retry',
                style: AppTextStyles.font14DarkGreySemiBold.copyWith(
                  color: AppColors.secondaryColor7,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
