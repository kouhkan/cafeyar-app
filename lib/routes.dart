import 'package:cafeyar_app/screens/authenticate/authenticate_screen.dart';
import 'package:cafeyar_app/screens/login/login_screen.dart';
import 'package:cafeyar_app/screens/on_board/on_board_screen.dart';
import 'package:cafeyar_app/screens/register/register_screen.dart';
import 'package:cafeyar_app/screens/splash/splash_screen.dart';
import 'package:flutter/widgets.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (_) => SplashScreen(),
  OnBoardScreen.routeName: (_) => OnBoardScreen(),
  RegisterScreen.routeName: (_) => RegisterScreen(),
  LoginScreen.routeName: (_) => LoginScreen(),
  AuthenticateScreen.routeName: (_) => AuthenticateScreen(),

};
