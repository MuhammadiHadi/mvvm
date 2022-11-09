import 'dart:convert';
import 'dart:io';

import 'package:http/http.dart';
import 'package:mvvm/data/app_exception.dart';
import 'package:mvvm/data/network/BaseApiService.dart';

import 'package:http/http.dart' as http;

class NetworkApiServices extends BaseApiServices {
  @override
  Future getGetApiService(String url) async {
    dynamic responsejson;
    try {
      Response response =
          await http.get(Uri.parse(url)).timeout(Duration(seconds: 10));

      return responsejson(response);
    } on SocketException {
      throw FetchDataException("no internet connection");
    }

    return responsejson;
  }

  @override
  Future getPostApiService(String url, dynamic data) async {
    dynamic responsejson;
    try {
      Response response =
          await post(Uri.parse(url), body: data).timeout(Duration(seconds: 10));
      return responsejson(response);
    } on SocketException {
      throw FetchDataException("no internet connection");
    }
  }

  dynamic returnResponse(http.Response response) {
    switch (response.statusCode) {
      case 200:
        dynamic responsejson = jsonDecode(response.body);
        return responsejson;
      case 400:
        dynamic responsejson = jsonDecode(response.body);
        return responsejson;
      case 500:
        dynamic responsejson = jsonDecode(response.body);
        return responsejson;
      default:
        throw BadRequestException("Invalid request");
    }
  }
}
