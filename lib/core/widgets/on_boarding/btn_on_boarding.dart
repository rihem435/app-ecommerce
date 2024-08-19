import 'package:app/core/theme/font_weight_helper.dart';
import 'package:flutter/material.dart';

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
        width: width,
        height: 65,
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
            fontSize: 20,
            decoration: TextDecoration.none,
            fontFamily: 'Poppins',
            fontWeight: FontWeightHelper.regular,
          ),
        ),
      ),
    );
  }
}
