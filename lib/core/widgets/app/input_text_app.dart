import 'package:app/core/theme/app_colors.dart';
import 'package:app/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class InputTextApp extends StatelessWidget {
  final String? label;
  final IconData? prefixIcon;
  final Widget? iconVisbility;
  final bool? obscureText;
  final TextEditingController? controller;
  const InputTextApp(
      {Key? key,
      this.label,
      this.prefixIcon,
      this.iconVisbility,
      this.obscureText, this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText ?? false,
      decoration: InputDecoration(
        label: Text(
          label!,
          style: TextStyle(
            color: AppColors.blackColor,
            fontSize: 15.sp,
            fontWeight: FontWeightHelper.medium,
            fontFamily: "Poppins",
          ),
        ),
        prefixIcon: Icon(
          prefixIcon,
        ),
        suffixIcon: iconVisbility,
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
          ),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: AppColors.redColor,
          ),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(
            style: BorderStyle.solid,
            color: AppColors.redColor,
          ),
          borderRadius: BorderRadius.circular(
            20,
          ),
        ),
      ),
    );
  }
}
