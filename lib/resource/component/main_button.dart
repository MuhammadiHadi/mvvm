import 'package:flutter/material.dart';

import '../appColor/appColor.dart';

class MainButton extends StatelessWidget {
  String title;
  Color? color;
  Color? textcolor;
  VoidCallback? onTop;
  MainButton(
      {Key? key, required this.title, this.color, this.onTop, this.textcolor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTop,
      child: Container(
        height: 45,
        width: double.infinity,
        margin: EdgeInsets.only(top: 40),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
