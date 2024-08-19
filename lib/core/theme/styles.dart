import 'package:app/core/theme/app_colors.dart';
import 'package:app/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TextStyles {
  static TextStyle font15WhiteExtraLight = TextStyle(
    color: AppColors.whiteColor,
    fontSize: 15.sp,
    decoration: TextDecoration.none,
    fontFamily: 'Poppins',
    fontWeight: FontWeightHelper.extraLight,
    shadows: <Shadow>[
      Shadow(
        offset: Offset(2, 2),
        blurRadius: 3.0,
        color: Color.fromARGB(255, 0, 0, 0),
      ),
    ],
  );
  static TextStyle font26BlackBold = TextStyle(
    color: AppColors.blackColor,
    fontSize: 26.sp,
    decoration: TextDecoration.none,
    fontFamily: 'Poppins',
    fontWeight: FontWeightHelper.bold,
  );
}
