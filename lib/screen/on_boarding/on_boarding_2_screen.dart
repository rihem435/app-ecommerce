import 'package:app/core/theme/app_colors.dart';
import 'package:app/core/theme/styles.dart';
import 'package:app/core/widgets/on_boarding/btn_on_boarding.dart';
import 'package:app/core/widgets/on_boarding/custom_on_boarding.dart';
import 'package:app/core/widgets/on_boarding/title_emoji_widget.dart';
import 'package:app/screen/profile/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding2Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CustomOnBoarding(
      backGroundImage: "on_boarding_background.png",
      image: "on_boarding.png",
      emoji: "🤩",
      title: "Our shop delivery\napp brings your need.",
      sousTitle: Expanded(
        child: Text(
          "With our user-fheridly food delivery an you will enjoy the ummate convenience"!,
          style: TextStyles.font15WhiteExtraLight,
        ),
      ),
      flexBtn1: 2,
      flexBtn2: 2,
      button1: BtnOnBoarding(
        borderColor: AppColors.blackColor,
        colorText: AppColors.whiteColor,
        width: 148.w,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );
        },
        text: "Login",
      ),
      button2: BtnOnBoarding(
        borderColor: AppColors.blackColor,
        colorText: AppColors.whiteColor,
        colorBackground: AppColors.blackColor,
        width: 148.w,
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => LoginScreen(),
            ),
          );
        },
        text: "SignUp",
      ),
    );
  }
}
