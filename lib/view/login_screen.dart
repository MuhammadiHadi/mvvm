import 'package:flutter/material.dart';
import 'package:mvvm/resource/appColor/appColor.dart';
import 'package:mvvm/resource/component/main_button.dart';
import 'package:mvvm/resource/component/main_textfiled.dart';
import 'package:mvvm/view_model/auth_view_model.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final authsViewModel = Provider.of<AuthViewModel>(context);
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MainTextFiled(
                title: 'Email',
                icon: Icons.email_outlined,
                controller: _emailController,
              ),
              MainTextFiled(
                title: 'Password',
                icon: Icons.lock_open_outlined,
                controller: _passwordController,
              ),
              MainButton(
                title: "LOGIN",
                color: AppColors.mainButton,
                onTop: () {
                  Map data = {
                    'email': _emailController.text.toString(),
                    'password': _passwordController.text.toString(),
                  };
                  authsViewModel.LoginApi(data, context);
                  print("api hit");
                },
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 10),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'signup');
                  },
                  child: Text.rich(
                      TextSpan(text: "Don't have an Account?", children: [
                    TextSpan(
                        text: " Signup",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.bold))
                  ])),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
