import 'package:cafeyar_app/components/socal_card.dart';
import 'package:cafeyar_app/constants.dart';
import 'package:cafeyar_app/screens/login/login_screen.dart';
import 'package:cafeyar_app/screens/register/components/register_form.dart';
import 'package:cafeyar_app/size_config.dart';
import 'package:cafeyar_app/texts/app_large_text.dart';
import 'package:cafeyar_app/texts/app_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

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
                    AppLargeText(text: 'ساخت حساب کاربری', size: 32,),
                    AppText(text: 'لطفا جهت ثبت‌نام شماره همراه خود را وارد کنید'),
                  ],
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                RegisterForm(),
                SizedBox(height: SizeConfig.screenHeight * 0.04,),
                GestureDetector(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, LoginScreen.routeName);
                  },
                  child: AppText(text: 'حساب کاربری دارم', size: 18, color: Colors.black54,),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                AppText(text: 'با ثبت‌نام کردن خود، با قوانین و ضوابط اپلیکیشن کافه‌یار موافقت کرده‌اید',
                size: 12, color: Colors.black38,),
              ],
            ),
          ),
        ),
      ),
    );
  }
}