import 'package:cafeyar_app/routes.dart';
import 'package:cafeyar_app/screens/on_board/on_board_screen.dart';
import 'package:cafeyar_app/screens/register/register_screen.dart';
import 'package:cafeyar_app/screens/splash/splash_screen.dart';
import 'package:cafeyar_app/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: theme(),
      initialRoute: OnBoardScreen.routeName,
      routes: routes,
      // home: MainScreen(),
    );
  }
}
