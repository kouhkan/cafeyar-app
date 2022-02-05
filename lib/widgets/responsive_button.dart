import 'package:flutter/material.dart';


class ResponsiveButton extends StatelessWidget {
  double? width;
  bool? isResponsive;


  ResponsiveButton({Key? key, this.width, this.isResponsive}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width,
      height: 60,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.teal
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(Icons.arrow_forward_ios_rounded, color: Colors.white,)
        ],
      ),
    );
  }
}