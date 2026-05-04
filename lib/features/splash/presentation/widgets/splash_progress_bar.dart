import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';

class SplashProgressBar extends StatelessWidget {
  final double value;

  const SplashProgressBar({super.key, required this.value});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        final clamped = value.clamp(0.0, 1.0);
        return Container(
          height: 6.h,
          decoration: BoxDecoration(
            color: AppColors.primaryColor8,
            borderRadius: BorderRadius.circular(6.r),
          ),
          child: Align(
            alignment: Alignment.centerLeft,
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 400),
              width: constraints.maxWidth * clamped,
              decoration: BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.circular(6.r),
              ),
            ),
          ),
        );
      },
    );
  }
}
