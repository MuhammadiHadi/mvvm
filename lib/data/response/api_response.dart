import 'package:mvvm/data/response/status.dart';

class ApiResponse<T> {
  String? status;
  T? data;
  String? message;

  ApiResponse(this.status, this.data, this.message);

  ApiResponse.loading() : status = Status.LOADING.toString();
  ApiResponse.complete() : status = Status.COMPLETE.toString();
  ApiResponse.error() : status = Status.ERROR.toString();

  @override
  String tostring() {
    return "status $status \n Message $message \n Data $data";
  }
}
