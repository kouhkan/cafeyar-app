import 'package:cafeyar_app/screens/login/components/body.dart';
import 'package:cafeyar_app/texts/app_text.dart';
import 'package:flutter/material.dart';


class LoginScreen extends StatelessWidget {
  static String routeName = '/login';
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(text: 'ورود',),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
