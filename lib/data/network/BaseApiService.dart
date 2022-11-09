abstract class BaseApiServices {
  Future<dynamic> getGetApiService(String url);
  Future<dynamic> getPostApiService(String url, dynamic data);
}
