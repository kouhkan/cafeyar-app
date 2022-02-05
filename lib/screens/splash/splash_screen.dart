import 'package:cafeyar_app/screens/splash/components/body.dart';
import 'package:cafeyar_app/size_config.dart';
import 'package:flutter/material.dart';


class SplashScreen extends StatelessWidget {
  static String routeName = '/splash';

  const SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);

    return Scaffold(
      body: Body(),
    );
  }
}
