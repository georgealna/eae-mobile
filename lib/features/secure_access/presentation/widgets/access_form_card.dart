import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';
import '../../logic/secure_access_cubit.dart';

class AccessFormCard extends StatelessWidget {
  const AccessFormCard({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SecureAccessCubit, SecureAccessState>(
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
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Corporate Email or Organizational ID',
                style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                  color: AppColors.primaryColor9,
                ),
              ),
              verticalSpace(10),
              TextFormField(
                initialValue: readyState.email,
                onChanged: context.read<SecureAccessCubit>().updateEmail,
                style: AppTextStyles.font14DarkGreyRegular.copyWith(
                  color: AppColors.primaryColor9,
                ),
                decoration: InputDecoration(
                  hintText: 'name@company.com or ORG-12345',
                  hintStyle: AppTextStyles.font14DarkGreyRegular.copyWith(
                    color: AppColors.tertiaryColor5,
                  ),
                  suffixIcon: Icon(
                    Icons.domain,
                    color: AppColors.tertiaryColor5,
                  ),
                  filled: true,
                  fillColor: AppColors.neutralColor,
                  contentPadding: EdgeInsets.symmetric(
                    horizontal: 16.w,
                    vertical: 14.h,
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.tertiaryColor3),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: AppColors.primaryColor),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                ),
              ),
              if (readyState.errorMessage != null) ...[
                verticalSpace(8),
                Text(
                  readyState.errorMessage!,
                  style: AppTextStyles.font12DarkGreyLight.copyWith(
                    color: AppColors.orangeLowInStock,
                  ),
                ),
              ],
              verticalSpace(16),
              Container(
                width: double.infinity,
                height: 52.h,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.r),
                ),
                child: ElevatedButton(
                  onPressed: readyState.isSubmitting
                      ? null
                      : context.read<SecureAccessCubit>().submit,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: AppColors.primaryColor10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.r),
                    ),
                    elevation: 8,
                    shadowColor: AppColors.primaryColor8,
                  ),
                  child: readyState.isSubmitting
                      ? Container(
                          width: 18.w,
                          height: 18.w,
                          alignment: Alignment.center,
                          child: CircularProgressIndicator(
                            strokeWidth: 2,
                            color: AppColors.neutralColor,
                          ),
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Identify Institution',
                              style: AppTextStyles.font14DarkGreySemiBold
                                  .copyWith(color: AppColors.neutralColor),
                            ),
                            horizontalSpace(8),
                            Icon(
                              Icons.arrow_forward,
                              color: AppColors.neutralColor,
                              size: 18.sp,
                            ),
                          ],
                        ),
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
                      'Encrypted multi-factor authentication active',
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
