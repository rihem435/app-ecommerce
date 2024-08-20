import 'package:app/core/theme/app_colors.dart';
import 'package:app/core/widgets/on_boarding/btn_on_boarding.dart';
import 'package:app/core/widgets/on_boarding/custom_on_boarding.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding1Screen extends StatelessWidget {
  const OnBoarding1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomOnBoarding(
      backGroundImage: "back_ground_on_boarding_1.jpg",
      image: "on_boarding_1.jpg",
      emoji: "😛",
      title: "Bringing happiness\n with delicious food\n is our goal.",
      flexBtn1: 1,
      flexBtn2: 3,
      button1: BtnOnBoarding(
        borderColor: AppColors.blackColor,
        colorText: AppColors.whiteColor,
        width: 100.w,
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => LoginScreen(),
          //   ),
          // );
        },
        text: "skip",
      ),
      button2: BtnOnBoarding(
        borderColor: AppColors.blackColor,
        colorText: AppColors.whiteColor,
        colorBackground: AppColors.blackColor,
        width: 245.w,
        onTap: () {
          // Navigator.push(
          //   context,
          //   MaterialPageRoute(
          //     builder: (context) => LoginScreen(),
          //   ),
          // );
        },
        text: "Start with email or phone",
      ),
    );
  }
}
