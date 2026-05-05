import 'package:eae_mobile/core/helpers/input_validation_type.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';
import '../../../../core/public_widgets/button_widget.dart';
import '../../../../core/public_widgets/text_field_widget.dart';
import '../../logic/login_cubit.dart';

class LoginCard extends StatelessWidget {
  const LoginCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<LoginCubit, LoginState>(
      builder: (context, state) {
        final cubit = context.read<LoginCubit>();
        final isSubmitting = state.maybeWhen(
          loading: () => true,
          orElse: () => false,
        );
        final errorMessage = state.maybeWhen(
          error: (error) => error,
          orElse: () => null,
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
            key: cubit.formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _BiometricButton(
                  onTap: isSubmitting ? null : cubit.submitBiometric,
                ),
                verticalSpace(12),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.verified_user_outlined,
                      color: AppColors.secondaryColor7,
                      size: 18.sp,
                    ),
                    horizontalSpace(8),
                    Text(
                      AppStrings.biometricSecurityActive,
                      style: AppTextStyles.font12DarkGreyLight.copyWith(
                        color: AppColors.secondaryColor7,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                verticalSpace(16),
                const _DividerLabel(),
                verticalSpace(16),
                Text(
                  AppStrings.workEmail,
                  style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                    color: AppColors.primaryColor9,
                  ),
                ),
                verticalSpace(8),
                TextFieldWidget(
                  controller: cubit.emailController,
                  hintText: AppStrings.workEmailHint,
                  labelText: AppStrings.workEmail,
                  obscureText: false,
                  prefixIcon: Icons.mail_outline,
                  prefixIconColor: AppColors.tertiaryColor6,
                  inputColor: AppColors.primaryColor9,
                  validationType: InputValidationType.email,
                ),
                verticalSpace(14),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      AppStrings.password,
                      style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                        color: AppColors.primaryColor9,
                      ),
                    ),
                    Text(
                      AppStrings.forgotPassword,
                      style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                        color: AppColors.secondaryColor7,
                      ),
                    ),
                  ],
                ),
                verticalSpace(8),
                TextFieldWidget(
                  controller: cubit.passwordController,
                  hintText: AppStrings.passwordHint,
                  labelText: AppStrings.password,
                  obscureText: true,
                  prefixIcon: Icons.lock_outline,
                  prefixIconColor: AppColors.tertiaryColor6,
                  inputColor: AppColors.primaryColor9,
                  validationType: InputValidationType.password,
                ),
                if (errorMessage != null) ...[
                  verticalSpace(8),
                  Text(
                    errorMessage,
                    style: AppTextStyles.font11OrangeLowInStockSemiBold,
                  ),
                ],
                verticalSpace(18),
                SizedBox(
                  width: double.infinity,
                  height: 52.h,
                  child: isSubmitting
                      ? Stack(
                          alignment: Alignment.center,
                          children: [
                            AbsorbPointer(
                              child: ButtonWidget(
                                title: AppStrings.enterpriseSignIn,
                                onTap: () {},
                                width: double.infinity,
                                height: 52.h,
                                radius: 12.r,
                                backgroundColor: AppColors.neutralColor,
                                borderColor: AppColors.primaryColor8,
                                textStyle: AppTextStyles.font14DarkGreySemiBold
                                    .copyWith(color: AppColors.primaryColor9),
                              ),
                            ),
                            SizedBox(
                              width: 20.w,
                              height: 20.w,
                              child: CircularProgressIndicator(
                                strokeWidth: 2,
                                color: AppColors.primaryColor6,
                              ),
                            ),
                          ],
                        )
                      : ButtonWidget(
                          title: AppStrings.enterpriseSignIn,
                          onTap: cubit.submit,
                          width: double.infinity,
                          height: 52.h,
                          radius: 12.r,
                          backgroundColor: AppColors.neutralColor,
                          borderColor: AppColors.primaryColor8,
                          textStyle: AppTextStyles.font14DarkGreySemiBold
                              .copyWith(color: AppColors.primaryColor9),
                        ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class _BiometricButton extends StatelessWidget {
  final VoidCallback? onTap;

  const _BiometricButton({this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      borderRadius: BorderRadius.circular(14.r),
      child: Ink(
        height: 52.h,
        decoration: BoxDecoration(
          color: AppColors.primaryColor10,
          borderRadius: BorderRadius.circular(14.r),
          boxShadow: [
            BoxShadow(
              color: AppColors.primaryColor8.withValues(alpha: 0.3),
              blurRadius: 16.r,
              offset: Offset(0, 10.h),
            ),
          ],
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.fingerprint, color: AppColors.neutralColor, size: 18.sp),
            horizontalSpace(10),
            Text(
              AppStrings.signInWithBiometrics,
              style: AppTextStyles.font14DarkGreySemiBold.copyWith(
                color: AppColors.neutralColor,
                letterSpacing: 0.4,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _DividerLabel extends StatelessWidget {
  const _DividerLabel();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: Divider(color: AppColors.tertiaryColor2, thickness: 1)),
        horizontalSpace(12),
        Text(
          AppStrings.enterpriseOidc,
          style: AppTextStyles.font10DarkGreyRegular.copyWith(
            color: AppColors.tertiaryColor6,
            letterSpacing: 2,
            fontWeight: FontWeight.w700,
          ),
        ),
        horizontalSpace(12),
        Expanded(child: Divider(color: AppColors.tertiaryColor2, thickness: 1)),
      ],
    );
  }
}
