import 'package:flutter/material.dart';
import 'package:mvvm/resource/component/main_button.dart';
import 'package:mvvm/resource/component/main_textfiled.dart';

import '../../resource/appColor/appColor.dart';

class SignupView extends StatefulWidget {
  const SignupView({Key? key}) : super(key: key);

  @override
  State<SignupView> createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  TextEditingController emailconttroller = TextEditingController();
  TextEditingController passwordconttroller = TextEditingController();
  TextEditingController nameconttroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                MainTextFiled(
                  title: 'userName',
                  icon: Icons.person_outline,
                  controller: nameconttroller,
                ),
                MainTextFiled(
                  title: 'Email',
                  icon: Icons.email_outlined,
                  controller: emailconttroller,
                ),
                MainTextFiled(
                  title: 'Password',
                  icon: Icons.lock_open_outlined,
                  controller: passwordconttroller,
                ),
                MainButton(
                  title: "SIGNUP",
                  color: AppColors.mainButton,
                  onTop: () {},
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 10),
                  child: InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, 'Login_Screen');
                    },
                    child: Text.rich(
                        TextSpan(text: "Already have an Account?", children: [
                      TextSpan(
                          text: " Sign in",
                          style: TextStyle(
                              fontSize: 15, fontWeight: FontWeight.bold))
                    ])),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
