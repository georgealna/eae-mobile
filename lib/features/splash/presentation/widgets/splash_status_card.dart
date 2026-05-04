import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/text_styles.dart';
import '../../../../core/helpers/spacing.dart';

class SplashStatusCard extends StatelessWidget {
  final String title;

  const SplashStatusCard({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(16.r),
      decoration: BoxDecoration(
        color: AppColors.primaryColor9,
        borderRadius: BorderRadius.circular(18.r),
        border: Border.all(color: AppColors.primaryColor7, width: 1.w),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 140.h,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(14.r),
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [AppColors.primaryColor8, AppColors.primaryColor7],
              ),
            ),
            child: CustomPaint(
              painter: _GridGlowPainter(
                lineColor: AppColors.secondaryColor7,
                glowColor: AppColors.secondaryColor6,
              ),
            ),
          ),
          verticalSpace(14),
          Row(
            children: [
              Icon(
                Icons.lock_outline,
                color: AppColors.secondaryColor,
                size: 18.sp,
              ),
              horizontalSpace(8),
              Text(
                title.toUpperCase(),
                style: AppTextStyles.font12DarkGreySemiBold.copyWith(
                  color: AppColors.secondaryColor,
                  letterSpacing: 1.2,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class _GridGlowPainter extends CustomPainter {
  final Color lineColor;
  final Color glowColor;

  const _GridGlowPainter({required this.lineColor, required this.glowColor});

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = lineColor.withValues(alpha: 0.35)
      ..strokeWidth = 1;

    const gap = 22.0;
    for (double x = 0; x <= size.width; x += gap) {
      canvas.drawLine(Offset(x, 0), Offset(x, size.height), paint);
    }
    for (double y = 0; y <= size.height; y += gap) {
      canvas.drawLine(Offset(0, y), Offset(size.width, y), paint);
    }

    final glowPaint = Paint()
      ..color = glowColor.withValues(alpha: 0.18)
      ..maskFilter = const MaskFilter.blur(BlurStyle.normal, 12);
    canvas.drawCircle(
      Offset(size.width * 0.7, size.height * 0.35),
      28,
      glowPaint,
    );
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) => false;
}
