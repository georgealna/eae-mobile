import 'package:eae_mobile/core/constants/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';
import '../../logic/secure_access_cubit.dart';

class AccessPartnerGrid extends StatelessWidget {
  const AccessPartnerGrid({super.key});

  @override
  Widget build(BuildContext context) {
    final partners = [
      _Partner(AppStrings.globalBankX, Icons.account_balance),
      _Partner(AppStrings.engineeringSOC, Icons.security),
      _Partner(AppStrings.fintechPartners, Icons.trending_up),
      _Partner(AppStrings.maritimeAlliance, Icons.anchor),
      _Partner(AppStrings.insuranceGroup, Icons.shield),
      _Partner(AppStrings.otherPartners, Icons.add_circle_outline, isGhost: true),
    ];

    return BlocBuilder<SecureAccessCubit, SecureAccessState>(
      builder: (context, state) {
        final selected = state.maybeWhen(
          ready: (_, selectedPartner, __, ___) => selectedPartner,
          orElse: () => null,
        );

        return Wrap(
          spacing: 16.w,
          runSpacing: 16.h,
          children: partners.map((partner) {
            final isSelected = partner.name == selected;
            return GestureDetector(
              onTap: () =>
                  context.read<SecureAccessCubit>().selectPartner(partner.name),
              child: Container(
                width: (ScreenUtil().screenWidth - 72.w) / 2,
                padding: EdgeInsets.all(14.r),
                decoration: BoxDecoration(
                  color: partner.isGhost
                      ? AppColors.neutralColor
                      : AppColors.neutralColor,
                  borderRadius: BorderRadius.circular(16.r),
                  border: Border.all(
                    color: isSelected
                        ? AppColors.secondaryColor
                        : AppColors.tertiaryColor2,
                    width: isSelected ? 1.6 : 1,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: AppColors.tertiaryColor2.withValues(alpha: 0.35),
                      blurRadius: 16.r,
                      offset: Offset(0, 8.h),
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    Container(
                      width: 46.w,
                      height: 46.w,
                      decoration: BoxDecoration(
                        color: AppColors.neutralColor,
                        borderRadius: BorderRadius.circular(12.r),
                        border: Border.all(color: AppColors.tertiaryColor2),
                      ),
                      child: Icon(
                        partner.icon,
                        color: AppColors.tertiaryColor6,
                        size: 22.sp,
                      ),
                    ),
                    verticalSpace(12),
                    Text(
                      partner.name.toUpperCase(),
                      textAlign: TextAlign.center,
                      style: AppTextStyles.font10DarkGreyRegular.copyWith(
                        letterSpacing: 1.2,
                        fontWeight: FontWeight.w700,
                        color: AppColors.tertiaryColor7,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }).toList(),
        );
      },
    );
  }
}

class _Partner {
  final String name;
  final IconData icon;
  final bool isGhost;

  const _Partner(this.name, this.icon, {this.isGhost = false});
}
