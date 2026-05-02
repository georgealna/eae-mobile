import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';
import 'font_size.dart';
import 'font_weight_helper.dart';
import 'fonts_family.dart';

class AppTextStyles {
  static TextStyle get font24WhiteExtraBold => TextStyle(
    color: AppColors.whiteLaight,
    fontFamily: AppFontsFamily.inter,
    fontWeight: AppFontWeightHelper.extraBold,
    fontSize: AppFontSize.s24,
  );

  static TextStyle get font16WhiteLight => TextStyle(
    color: AppColors.whiteLaight,
    fontFamily: AppFontsFamily.inter,
    fontWeight: AppFontWeightHelper.light,
    fontSize: AppFontSize.s16,
  );

  static TextStyle get font16DarkGreyBold => TextStyle(
    fontFamily: AppFontsFamily.inter,
    fontWeight: AppFontWeightHelper.bold,
    fontSize: AppFontSize.s16,
    color: AppColors.textPrimary,
  );

  static TextStyle get font10DarkGreyRegular => TextStyle(
    fontFamily: AppFontsFamily.inter,
    fontSize: AppFontSize.s10,
    color: AppColors.textPrimary,
    fontWeight: AppFontWeightHelper.regular,
  );

  static TextStyle get font13DarkGreyThin => TextStyle(
    fontFamily: AppFontsFamily.inter,
    color: AppColors.textPrimary,
    fontWeight: AppFontWeightHelper.thin,
    fontSize: AppFontSize.s13,
  );

  static TextStyle get font13DarkGreyMedium => TextStyle(
    color: AppColors.textPrimary,
    fontSize: AppFontSize.s13,
    fontWeight: AppFontWeightHelper.medium,
  );

  static TextStyle get font14DarkGreySemiBold => TextStyle(
    fontFamily: AppFontsFamily.inter,
    fontSize: AppFontSize.s14,
    fontWeight: AppFontWeightHelper.semiBold,
    color: AppColors.textPrimary,
  );

  static TextStyle get font11DarkGreyLightMinStock => TextStyle(
    fontFamily: AppFontsFamily.inter,
    fontWeight: AppFontWeightHelper.light,
    fontSize: AppFontSize.s11,
    color: AppColors.textPrimary,
  );

  static TextStyle font14CustomBold(Color color) =>
      TextStyle(fontSize: 14.sp, fontWeight: FontWeight.w700, color: color);

  static TextStyle get font11DarkGreyLight => TextStyle(
    color: AppColors.textPrimary,
    fontSize: AppFontSize.s11,
    fontFamily: AppFontsFamily.inter,
    fontWeight: AppFontWeightHelper.light,
  );

  static TextStyle get font10DarkGreyLight => TextStyle(
    fontSize: AppFontSize.s10,
    color: AppColors.textPrimary,
    fontFamily: AppFontsFamily.inter,
    fontWeight: AppFontWeightHelper.light,
  );

  static TextStyle get font11RedWarningSemiBold => TextStyle(
    color: AppColors.redWarring,
    fontSize: AppFontSize.s11,
    fontWeight: AppFontWeightHelper.semiBold,
  );

  static TextStyle get font11OrangeLowInStockSemiBold => TextStyle(
    color: AppColors.orangeLowInStock,
    fontWeight: AppFontWeightHelper.semiBold,
    fontFamily: AppFontsFamily.inter,
    fontSize: AppFontSize.s11,
  );

  static TextStyle get font11GreenGoodSemiBold => TextStyle(
    color: AppColors.greenGood,
    fontWeight: AppFontWeightHelper.semiBold,
    fontFamily: AppFontsFamily.inter,
    fontSize: AppFontSize.s11,
  );

  static TextStyle get font13DarkGreySemiBold => TextStyle(
    fontFamily: AppFontsFamily.inter,
    color: AppColors.textPrimary,
    fontWeight: AppFontWeightHelper.semiBold,
    fontSize: AppFontSize.s13,
  );

  static TextStyle get font11DarkGreyThin => TextStyle(
    fontWeight: AppFontWeightHelper.thin,
    color: AppColors.textPrimary,
    fontSize: 11.sp,
  );

  static TextStyle get font14DarkGreySemiBoldInfo => TextStyle(
    fontFamily: AppFontsFamily.inter,
    color: AppColors.textPrimary,
    fontWeight: AppFontWeightHelper.semiBold,
    fontSize: 14.sp,
  );

  static TextStyle get font17DarkGreySemiBold => TextStyle(
    fontSize: 17.sp,
    color: AppColors.textPrimary,
    fontFamily: AppFontsFamily.inter,
    fontWeight: AppFontWeightHelper.semiBold,
  );

  static TextStyle get font12WhiteSemiBold => TextStyle(
    color: AppColors.white,
    fontSize: 12.sp,
    fontFamily: AppFontsFamily.inter,
    fontWeight: AppFontWeightHelper.semiBold,
  );

  static TextStyle get font12DarkGreyLight => TextStyle(
    fontWeight: AppFontWeightHelper.light,
    color: AppColors.textPrimary,
    fontSize: 12.sp,
  );

  static TextStyle get font12DarkGreySemiBold => TextStyle(
    color: AppColors.textPrimary,
    fontWeight: AppFontWeightHelper.semiBold,
    fontSize: 12.sp,
    fontFamily: AppFontsFamily.inter,
  );

  static TextStyle get font32DarkGreyMedium => TextStyle(
    color: AppColors.textPrimary,
    fontWeight: AppFontWeightHelper.medium,
    fontSize: 32.sp,
    fontFamily: AppFontsFamily.inter,
  );

  static TextStyle get font15DarkGreyMedium => TextStyle(
    color: AppColors.textPrimary,
    fontWeight: AppFontWeightHelper.medium,
    fontSize: 15.sp,
    fontFamily: AppFontsFamily.inter,
  );

  static TextStyle get font14DarkGreyMedium => TextStyle(
    color: AppColors.textPrimary,
    fontWeight: AppFontWeightHelper.medium,
    fontSize: 14.sp,
    fontFamily: AppFontsFamily.inter,
  );

  static TextStyle get font12DarkGreyRegular => TextStyle(
    color: AppColors.textPrimary,
    fontWeight: AppFontWeightHelper.regular,
    fontSize: 12.sp,
    fontFamily: AppFontsFamily.inter,
  );

  static TextStyle get font14DarkGreyRegular => TextStyle(
    color: AppColors.textPrimary,
    fontWeight: AppFontWeightHelper.regular,
    fontSize: 14.sp,
    fontFamily: AppFontsFamily.inter,
  );

  static TextStyle get font10DarkGreyThin => TextStyle(
    color: AppColors.textPrimary,
    fontWeight: AppFontWeightHelper.thin,
    fontSize: 10.sp,
    fontFamily: AppFontsFamily.inter,
  );

  static TextStyle get font20DarkGreyBold => TextStyle(
    color: AppColors.textPrimary,
    fontWeight: AppFontWeightHelper.bold,
    fontSize: 20.sp,
    fontFamily: AppFontsFamily.inter,
  );
}
