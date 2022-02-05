import 'package:cafeyar_app/screens/login/components/login_form.dart';
import 'package:cafeyar_app/size_config.dart';
import 'package:cafeyar_app/texts/app_large_text.dart';
import 'package:cafeyar_app/texts/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cafeyar_app/screens/register/register_screen.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.04), // 4%
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    AppLargeText(text: 'ورود به حساب کاربری', size: 32,),
                    AppText(text: 'لطفا جهت ورود شماره همراه خود را وارد کنید'),
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                LoginForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04,),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, RegisterScreen.routeName);
                  },
                  child: AppText(text: 'حساب کاربری ندارم', size: 18, color: Colors.black54,),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
              ],
            ),
          ),
        ),
      ),
    );
  }
}