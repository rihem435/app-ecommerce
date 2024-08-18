import 'package:app/core/theme/app_colors.dart';
import 'package:app/core/theme/styles.dart';
import 'package:app/core/widgets/on_boarding/title_emoji_widget.dart';
import 'package:app/screen/profile/login_screen.dart';
import 'package:flutter/material.dart';

class OnBoardingScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/on_boarding_background.png",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(
            top: 20.0,
            left: 20,
            right: 20,
            bottom: 30,
          ),
          child: Column(
            children: [
              Expanded(
                flex: 3,
                child: Image.asset(
                  "assets/images/on_boarding.png",
                ),
              ),
              Expanded(
                child: TitleEmojiWidget(
                  title: 'Our shop delivery\napp brings your need.',
                  emoji: "🤩",
                ),
              ),
              Expanded(
                child: Text(
                    "With our user-fheridly food delivery an you will enjoy the ummate convenience",
                    style: TextStyles.font15WhiteExtraLight),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        width: 148,
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
                            color: AppColors.blackColor,
                          ),
                        ),
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: AppColors.whiteColor,
                              fontSize: 20,
                              decoration: TextDecoration.none,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w600),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          Navigator.of(context).push(
                            MaterialPageRoute(
                              builder: (context) => LoginScreen(),
                            ),
                          );
                        },
                        child: Container(
                          width: 148,
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
                              color: AppColors.blackColor,
                            ),
                          ),
                          child: Text(
                            'Login',
                            style: TextStyle(
                                color: AppColors.whiteColor,
                                fontSize: 20,
                                decoration: TextDecoration.none,
                                fontFamily: 'Poppins',
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
