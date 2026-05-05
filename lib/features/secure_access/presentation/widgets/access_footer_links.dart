import 'package:flutter/material.dart';

import '../../../../core/constants/app_strings.dart';
import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';

class AccessFooterLinks extends StatelessWidget {
  const AccessFooterLinks({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          AppStrings.allRightsReserved,
          textAlign: TextAlign.center,
          style: AppTextStyles.font10DarkGreyRegular.copyWith(
            color: AppColors.primaryColor9,
            letterSpacing: 1.1,
          ),
        ),
        verticalSpace(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _FooterLink(label: AppStrings.privacyProtocol),
            _FooterLink(label: AppStrings.termsOfAccess),
            _FooterLink(label: AppStrings.securityWhitepaper),
          ],
        ),
      ],
    );
  }
}

class _FooterLink extends StatelessWidget {
  final String label;

  const _FooterLink({required this.label});

  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      textAlign: TextAlign.center,
      style: AppTextStyles.font10DarkGreyRegular.copyWith(
        color: AppColors.primaryColor9,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
