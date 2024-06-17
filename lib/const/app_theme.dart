import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:structure/const/color_pallet.dart';

class AppTheme {
  static ThemeData theme = ThemeData(
      scaffoldBackgroundColor: Color(0xffffffff),
      //Filled Button
      filledButtonTheme: FilledButtonThemeData(
        style: FilledButton.styleFrom(
          minimumSize: Size(double.infinity, 45.h),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12.r),
          ),
        ),
      ),
      //inputborder
      inputDecorationTheme: InputDecorationTheme(
          filled: true,
          fillColor: AppColors.backgroundColor,
          enabledBorder: OutlineInputBorder(
            
            borderRadius: BorderRadius.circular(12.r),
          ),
          focusedBorder:
              OutlineInputBorder(borderRadius: BorderRadius.circular(12.r))));
}
