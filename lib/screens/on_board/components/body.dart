import 'package:cafeyar_app/components/default_button.dart';
import 'package:cafeyar_app/constants.dart';
import 'package:cafeyar_app/screens/on_board/components/on_board_content.dart';
import 'package:cafeyar_app/screens/on_board/on_board_screen.dart';
import 'package:cafeyar_app/screens/register/register_screen.dart';
import 'package:cafeyar_app/size_config.dart';
import 'package:cafeyar_app/texts/app_text.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  void initState() {
    super.initState();
    checkFirstTime();
  }

  void checkFirstTime() async {
    const String theKey = "isSecondTime";

    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool isSecondTime = sharedPreferences.getBool(theKey) ?? false;
    print("isSecondTime " +
        sharedPreferences
            .containsKey(theKey)
            .toString()); // check your key either it is save or not?

    if (isSecondTime == true) {
      Navigator.pushReplacementNamed(context, RegisterScreen.routeName);
    } else {
      sharedPreferences.setBool(theKey, true);
    }
  }

  int currentPage = 0;
  List<Map<String, String>> splashData = [
    {
      "text": "به اپلیکیشن کافه‌یار خوش آمدید",
      "image": "assets/images/img1.jpg"
    },
    {
      "text": "به‌راحتی از خدمات کافه استفاده کنید",
      "image": "assets/images/img2.jpg"
    },
    {
      "text": "به ما در بهبود اپلیکیشن کمک کنید",
      "image": "assets/images/img3.jpg"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: PageView.builder(
                onPageChanged: (value) {
                  setState(() {
                    currentPage = value;
                  });
                },
                itemCount: splashData.length,
                itemBuilder: (context, index) => OnBoardContent(
                  image: splashData[index]["image"],
                  text: splashData[index]['text'],
                ),
              ),
            ),
            Expanded(
              flex: 2,
              child: Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(20)),
                child: Column(
                  children: <Widget>[
                    Spacer(),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(
                        splashData.length,
                        (index) => buildDot(index: index),
                      ),
                    ),
                    Spacer(flex: 3),
                    DefaultButton(
                      text: AppText(
                        text: 'ادامه',
                        color: Colors.white,
                        size: 24,
                      ),
                      press: () {
                        Navigator.pushReplacementNamed(
                            context, RegisterScreen.routeName);
                      },
                    ),
                    Spacer(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  AnimatedContainer buildDot({int? index}) {
    return AnimatedContainer(
      duration: kAnimationDuration,
      margin: EdgeInsets.only(right: 5),
      height: 6,
      width: currentPage == index ? 20 : 6,
      decoration: BoxDecoration(
        color: currentPage == index ? kPrimaryColor : Color(0xFFD8D8D8),
        borderRadius: BorderRadius.circular(3),
      ),
    );
  }
}
