import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:mvvm/repository/auth_repository.dart';
import 'package:mvvm/utils/utils/utils.dart';

class AuthViewModel with ChangeNotifier {
  final _appapi = AuthRepository();

  Future<void> LoginApi(dynamic data, BuildContext context) async {
    await _appapi.LoginApi(data).then((value) {
      Utils.toastMessage("login Successfully");
      if (kDebugMode) {
        Utils.toastMessage(value.toString());
        print(value.toString());
      }
    }).onError((error, stackTrace) {
      if (kDebugMode) {
        Utils.toastMessage(error.toString());
        print(error.toString());
      }
    });
  }
}
