import 'package:flutter/material.dart';

class MainTextFiled extends StatelessWidget {
  String title;
  IconData? icon;
  FocusScope? focusScope;
  TextEditingController? controller;
  MainTextFiled(
      {Key? key,
      required this.title,
      this.focusScope,
      this.icon,
      this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: title,
          prefixIcon: Icon(icon),
        ),
        controller: controller,
      ),
    );
  }
}
