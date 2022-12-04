import 'package:flutter/cupertino.dart';
import 'package:mvvm/repository/auth_repository.dart';

class AuthViewModel with ChangeNotifier {
  final _appapi = AuthRepository();

  Future<void> Login(dynamic data, BuildContext context) async {
    _appapi.LoginApi(data).then((value) {}).onError((error, stackTrace) {
      print(error.toString());
    });
  }
}
