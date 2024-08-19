import 'package:app/core/theme/app_colors.dart';
import 'package:app/core/theme/font_weight_helper.dart';
import 'package:app/core/theme/styles.dart';
import 'package:app/core/widgets/app/custom_background_image_screen.dart';
import 'package:app/core/widgets/on_boarding/title_emoji_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateDeliveryScreen extends StatelessWidget {
  const CreateDeliveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CustomBackgroundImageScreen(
      image: "bg_delivery.jpg",
      widget: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/delivery.png",
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                    flex: 3,
                    child: Text(
                      "Fast Delivery.",
                      style: TextStyles.font26BlackBold,
                    ),
                  ),
                  Expanded(
                    child: Image.asset(
                      "assets/images/icon_delivery.png",
                    ),
                  ),
                ],
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text(
                    'First Name',
                    style: TextStyle(
                      color: AppColors.blackColor,
                      fontSize: 15.sp,
                      fontWeight: FontWeightHelper.medium,
                      fontFamily: "Poppins",
                    ),
                  ),
                  suffixIcon: Icon(
                    Icons.person,
                  ),
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
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
