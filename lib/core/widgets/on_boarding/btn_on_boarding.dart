import 'package:app/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class BtnOnBoarding extends StatelessWidget {
  final void Function()? onTap;
  final double? width;
  final Color? borderColor;
  final String? text;
  final Color? colorText;
  final Color? colorBackground;

  const BtnOnBoarding(
      {Key? key,
      this.onTap,
      this.width,
      this.borderColor,
      this.text,
      this.colorText,
      this.colorBackground})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        width: width!.w,
        height: 65.h,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.all(
            Radius.circular(
              15,
            ),
          ),
          border: Border.all(
            width: 1,
            color: borderColor!,
          ),
          color: colorBackground,
        ),
        child: Text(
          text!,
          style: TextStyle(
            color: colorText,
            fontSize: 18.sp,
            decoration: TextDecoration.none,
            overflow: TextOverflow.ellipsis,//affiche ...
            fontFamily: 'Poppins',
            fontWeight: FontWeightHelper.regular,
          ),
        ),
      ),
    );
  }
}
