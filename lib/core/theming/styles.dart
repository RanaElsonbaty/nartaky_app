import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:nrtaky/core/theming/colors.dart';
import 'package:nrtaky/core/theming/fonts.dart';

class TextStyles {
  static final font12Primary500Weight = TextStyle(
      overflow: TextOverflow.ellipsis,
      color: AppColors.primaryColor,
      fontWeight: FontWeight.w500,
      fontSize:12.sp,
      fontFamily: AppFonts.font);
}
