import 'package:app/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class TitleEmojiWidget extends StatelessWidget {
  final String? title;
  final String? emoji;
  TitleEmojiWidget({Key? key, this.title, this.emoji}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
       
        children: [
          TextSpan(
            text: title ?? "",
            style: TextStyle(
                color: AppColors.whiteColor,
                fontSize: 24,
                decoration: TextDecoration.none,
                fontFamily: "Poppins"),
          ),
          TextSpan(
            text: emoji,
            style: TextStyle(
              fontSize: 30,
              color: Colors.yellow,
            ), // Taille de l'emoji
          ),
        ],
      ),
    );
  }
}
