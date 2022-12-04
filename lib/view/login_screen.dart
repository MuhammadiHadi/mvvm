import 'package:flutter/material.dart';
import 'package:mvvm/resource/appColor/appColor.dart';
import 'package:mvvm/resource/component/main_button.dart';
import 'package:mvvm/resource/component/main_textfiled.dart';
import 'package:mvvm/utils/utils/utils.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            child: Column(
              children: [
                MainTextFiled(
                  title: 'Email',
                  icon: Icons.email_outlined,
                ),
                MainTextFiled(
                  title: 'Password',
                  icon: Icons.lock_open_outlined,
                ),
                MainButton(
                  title: "LOGIN",
                  color: AppColors.green,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
