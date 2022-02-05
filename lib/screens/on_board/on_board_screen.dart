import 'package:cafeyar_app/screens/on_board/components/body.dart';
import 'package:cafeyar_app/size_config.dart';
import 'package:flutter/material.dart';


class OnBoardScreen extends StatelessWidget {
  static String routeName = '/onboard';

  const OnBoardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}
