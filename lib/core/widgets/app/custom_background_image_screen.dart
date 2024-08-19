import 'package:flutter/material.dart';

class CustomBackgroundImageScreen extends StatelessWidget {
  final String? image;
  final Widget? widget;
  const CustomBackgroundImageScreen({Key? key, this.image, this.widget})
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
              "assets/images/$image",
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: widget,
      ),
    );
  }
}
