
import 'package:cafeyar_app/constants.dart';
import 'package:cafeyar_app/size_config.dart';
import 'package:cafeyar_app/texts/app_large_text.dart';
import 'package:cafeyar_app/texts/app_text.dart';
import 'package:flutter/material.dart';

class OnBoardContent extends StatelessWidget {
  const OnBoardContent({
    Key? key,
    this.text,
    this.image,
  }) : super(key: key);
  final String? text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        AppLargeText(text: 'کافه‌یار'),
        AppText(text: text!),
        Spacer(flex: 2),
        Image.asset(
          image!,
          height: getProportionateScreenHeight(265),
          width: getProportionateScreenWidth(235),
        ),
      ],
    );
  }
}