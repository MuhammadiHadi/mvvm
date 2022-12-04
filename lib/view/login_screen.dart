import 'package:flutter/material.dart';
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
          TextButton(
              onPressed: () {
                Utils.toastMessage("Hello Meer");
              },
              child: Text("Clike Me"))
        ],
      ),
    );
  }
}
