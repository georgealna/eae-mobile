import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';

class SplashBackground extends StatelessWidget {
  final Widget child;

  const SplashBackground({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            AppColors.primaryColor10,
            AppColors.primaryColor7,
            AppColors.primaryColor6,
          ],
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            left: 24.w,
            child: Container(
              width: 2.w,
              height: 120.h,
              color: AppColors.secondaryColor7,
            ),
          ),
          Positioned(
            top: 18.h,
            left: 60.w,
            child: Container(
              width: 1.5.w,
              height: 80.h,
              color: AppColors.secondaryColor8,
            ),
          ),
          Positioned.fill(
            child: Container(
              decoration: BoxDecoration(
                gradient: RadialGradient(
                  center: const Alignment(0.0, -0.6),
                  radius: 1.0,
                  colors: [
                    AppColors.secondaryColor2.withValues(alpha: 0.08),
                    Colors.transparent,
                  ],
                ),
              ),
            ),
          ),
          child,
        ],
      ),
    );
  }
}
