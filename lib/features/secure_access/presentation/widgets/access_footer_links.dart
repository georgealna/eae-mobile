import 'package:flutter/material.dart';

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
          '© 2024 Enterprise Assessment Engine. All rights reserved.',
          textAlign: TextAlign.center,
          style: AppTextStyles.font10DarkGreyRegular.copyWith(
            color: AppColors.tertiaryColor4,
            letterSpacing: 1.1,
          ),
        ),
        verticalSpace(12),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            _FooterLink(label: 'PRIVACY\nPROTOCOL'),
            _FooterLink(label: 'TERMS OF\nACCESS'),
            _FooterLink(label: 'SECURITY\nWHITEPAPER'),
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
        color: AppColors.tertiaryColor5,
        letterSpacing: 1.2,
        fontWeight: FontWeight.w600,
      ),
    );
  }
}
