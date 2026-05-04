import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/helpers/spacing.dart';
import '../../logic/secure_access_cubit.dart';
import '../widgets/access_footer_links.dart';
import '../widgets/access_form_card.dart';
import '../widgets/access_header.dart';
import '../widgets/access_intro.dart';
import '../widgets/access_partner_grid.dart';
import '../widgets/access_security_notice.dart';

class SecureAccessScreen extends StatelessWidget {
  const SecureAccessScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => SecureAccessCubit(),
      child: const _SecureAccessView(),
    );
  }
}

class _SecureAccessView extends StatelessWidget {
  const _SecureAccessView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.neutralColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 16.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AccessHeader(),
              verticalSpace(28),
              const AccessIntro(),
              verticalSpace(24),
              const AccessFormCard(),
              verticalSpace(20),
              const AccessPartnerGrid(),
              verticalSpace(24),
              const AccessSecurityNotice(),
              verticalSpace(24),
              const AccessFooterLinks(),
            ],
          ),
        ),
      ),
    );
  }
}
