import 'package:mvvm/data/network/BaseApiService.dart';
import 'package:mvvm/data/network/NetworkApiService.dart';
import 'package:mvvm/resource/component/app_url.dart';

class AuthRepository {
  BaseApiServices _apiServices = NetworkApiServices();

  Future<dynamic> LoginApi(dynamic data) async {
    try {
      dynamic postrespone =
          await _apiServices.getPostApiService(AppUrl.loginUrl, data);
      return postrespone;
    } catch (e) {
      throw e;
    }
  }

  Future<dynamic> signUpApi(dynamic data) async {
    try {
      dynamic respone =
          await _apiServices.getPostApiService(AppUrl.signUrl, data);
      return respone;
    } catch (e) {
      throw e;
    }
  }
}
