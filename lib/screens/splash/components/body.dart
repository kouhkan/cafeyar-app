import 'package:cafeyar_app/screens/on_board/on_board_screen.dart';
import 'package:flutter/material.dart';


class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {

  @override
  void initState() {
    super.initState();
    new Future.delayed(
        const Duration(seconds: 3),
            () => Navigator.pushReplacementNamed(
          context,
         OnBoardScreen.routeName),);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Spacer(),
          Container(
              width: 187,
              height: 187,
              decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/img1.png')
                  )
              ),
          ),
          Spacer(),
          Text('0.0.1'),
          SizedBox(height: 20,)
        ],
      ),
    );
  }
}
