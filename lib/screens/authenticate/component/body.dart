import 'package:cafeyar_app/constants.dart';
import 'package:cafeyar_app/screens/authenticate/component/authenticate_form.dart';
import 'package:cafeyar_app/size_config.dart';
import 'package:cafeyar_app/texts/app_large_text.dart';
import 'package:cafeyar_app/texts/app_text.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding:
        EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: SizeConfig.screenHeight * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  AppLargeText(text: 'فعال‌سازی حساب کاربری'),
                  SizedBox(height: SizeConfig.screenHeight * 0.02,),
                  AppText(text: "کد فعال‌سازی به شماره همراه شمال ارسال خواهد شد"),
                ],
              ),
              buildTimer(),
              AuthenticateForm(),
              SizedBox(height: SizeConfig.screenHeight * 0.1),
              GestureDetector(
                onTap: () {
                  // OTP code resend
                },
                child: AppText(text: 'ارسال مجدد کد',),
              )
            ],
          ),
        ),
      ),
    );
  }

  Row buildTimer() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        TweenAnimationBuilder(
          tween: Tween(begin: 30.0, end: 0.0),
          duration: Duration(seconds: 30),
          builder: (_, dynamic value, child) => AppText(text: "00:${value.toInt()}", color: Colors.deepOrangeAccent,),
        ),
        AppText(text: 'مدت زمان باقی‌مانده '),
      ],
    );
  }
}