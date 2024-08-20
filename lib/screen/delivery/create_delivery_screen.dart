import 'package:app/core/theme/app_colors.dart';
import 'package:app/core/theme/font_weight_helper.dart';
import 'package:app/core/theme/styles.dart';
import 'package:app/core/widgets/app/custom_background_image_screen.dart';
import 'package:app/core/widgets/app/input_text_app.dart';
import 'package:app/core/widgets/on_boarding/title_emoji_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CreateDeliveryScreen extends StatelessWidget {
  const CreateDeliveryScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController firstNameController = TextEditingController();
    TextEditingController passwordController = TextEditingController();

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
              InputTextApp(
                label: "FirstName",
                prefixIcon: Icons.person,
                controller: firstNameController,
              ),
              SizedBox(
                height: 15.h,
              ),
              InputTextApp(
                label: "Password",
                prefixIcon: Icons.lock,
                iconVisbility: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.visibility,
                  ),
                ),
                obscureText: true,
                controller: passwordController,
              ),
              ElevatedButton(
                  onPressed: () {
                    print('firstname============>$firstNameController');

                    print('firstname text============>${firstNameController.text}');
                  },
                  child: Text("add"))
            ],
          ),
        ),
      ),
    );
  }
}
