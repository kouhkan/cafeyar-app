import 'package:cafeyar_app/screens/authenticate/component/body.dart';
import 'package:cafeyar_app/texts/app_text.dart';
import 'package:flutter/material.dart';


class AuthenticateScreen extends StatelessWidget {
  static String routeName = '/authenticate';

  const AuthenticateScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: AppText(text: 'فعال‌سازی',),
        centerTitle: true,
      ),
      body: Body(),
    );
  }
}
