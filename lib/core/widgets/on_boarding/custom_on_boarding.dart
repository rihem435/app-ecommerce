import 'package:app/core/theme/styles.dart';
import 'package:app/core/widgets/on_boarding/title_emoji_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomOnBoarding extends StatelessWidget {
  final String? image;
  final String? backGroundImage;

  final String? title;
  final String? emoji;
  final String? sousTitle;
  final Widget? button1;
  final Widget? button2;

  const CustomOnBoarding(
      {Key? key,
      this.image,
      this.title,
      this.emoji,
      this.sousTitle,
      this.button1,
      this.button2,
      this.backGroundImage})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.sizeOf(context).width,
        height: MediaQuery.sizeOf(context).height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              "assets/images/$backGroundImage",
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
                  "assets/images/$image",
                ),
              ),
              Expanded(
                child: TitleEmojiWidget(
                  title: title,
                  emoji: emoji,
                ),
              ),
              Expanded(
                child: Text(
                  sousTitle!,
                  style: TextStyles.font15WhiteExtraLight,
                ),
              ),
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: button1!,
                    ),
                    SizedBox(
                      width: 10.w,
                    ),
                    Expanded(
                      child: button2!,
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
