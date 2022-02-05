

import 'package:cafeyar_app/size_config.dart';
import 'package:cafeyar_app/texts/app_text.dart';
import 'package:flutter/material.dart';

import 'package:cafeyar_app/screens/register/components/body.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/register";

  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: AppBar(
        title: AppText(text: 'ثبت نام',),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
