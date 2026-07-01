import 'package:eae_mobile/core/helpers/input_validation_type.dart';
import 'package:eae_mobile/core/public_widgets/loading_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/extentions.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/public_widgets/button_widget.dart';
import '../../../../core/public_widgets/snack_bar_widget.dart';
import '../../../../core/public_widgets/text_field_widget.dart';
import '../../../../core/routing/routes.dart';
import '../../logic/secure_access_cubit.dart';

class AccessFormCard extends StatelessWidget {
  const AccessFormCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<SecureAccessCubit, SecureAccessState>(
      listener: (context, state) {
        state.maybeWhen(
          ready: (_, __, ___, errorMessage) {
            if (errorMessage == null || errorMessage.trim().isEmpty) {
              return;
            }

            showAppSnackBar(context, errorMessage);
          },
          success: () {
            showAppSnackBar(context, 'Access verified');
            context.pushNamedAndRemoveUntil(
              Routes.roleSelectionScreen,
              predicate: (_) => false,
            );
          },
          orElse: () {},
        );
      },
      builder: (context, state) {
        final readyState = state.maybeWhen(
          ready: (email, selectedPartner, isSubmitting, errorMessage) =>
              _ReadyViewState(
                email: email,
                isSubmitting: isSubmitting,
                errorMessage: errorMessage,
              ),
          orElse: () => const _ReadyViewState(),
        );

        return Container(
          padding: EdgeInsets.all(18.r),
          decoration: BoxDecoration(
            color: AppColors.neutralColor,
            borderRadius: BorderRadius.circular(18.r),
            border: Border.all(color: AppColors.tertiaryColor2),
            boxShadow: [
              BoxShadow(
                color: AppColors.tertiaryColor2.withValues(alpha: 0.35),
                blurRadius: 24.r,
                offset: Offset(0, 12.h),
              ),
            ],
          ),
          child: Form(
            key: context.read<SecureAccessCubit>().formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  AppStrings.emailOrId,
                  style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                    color: AppColors.primaryColor9,
                  ),
                ),
                verticalSpace(10),
                TextFieldWidget(
                  controller: context.read<SecureAccessCubit>().emailController,
                  hintText: AppStrings.emailOrIdForm,
                  labelText: AppStrings.emailOrId,
                  obscureText: false,
                  suffixIcon: Icons.domain,
                  suffixIconColor: AppColors.tertiaryColor5,
                  inputColor: AppColors.primaryColor9,
                  validationType: InputValidationType.emailOrOrgId,
                ),
                verticalSpace(16),
                Container(
                  width: double.infinity,
                  height: 52.h,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.r),
                  ),
                  child: readyState.isSubmitting
                      ? const LoadingWidget()
                      : ButtonWidget(
                          title: AppStrings.identifyingInstitution,
                          onTap: context.read<SecureAccessCubit>().submit,
                          width: double.infinity,
                          height: 52.h,
                          radius: 12.r,
                          backgroundColor: AppColors.primaryColor10,
                          borderColor: AppColors.primaryColor10,
                          textStyle: AppTextStyles.font14DarkGreySemiBold
                              .copyWith(color: AppColors.neutralColor),
                        ),
                ),
                verticalSpace(16),
                Row(
                  children: [
                    Icon(
                      Icons.verified_user_outlined,
                      color: AppColors.secondaryColor,
                      size: 18.sp,
                    ),
                    horizontalSpace(8),
                    Expanded(
                      child: Text(
                        AppStrings.encryptedMultiFactorAuthentication,
                        style: AppTextStyles.font11DarkGreyLight.copyWith(
                          color: AppColors.tertiaryColor7,
                          letterSpacing: 0.8,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _ReadyViewState {
  final String email;
  final bool isSubmitting;
  final String? errorMessage;

  const _ReadyViewState({
    this.email = '',
    this.isSubmitting = false,
    this.errorMessage,
  });
}
