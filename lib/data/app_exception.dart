import 'package:flutter/material.dart';

class AppException implements Exception {
  final _message;
  final _prefix;

  AppException([this._message, this._prefix]);

  String tostring() {
    return '$_prefix$_message';
  }
}

class FetchDataException extends AppException {
  FetchDataException([String? message]) : super("Error during communication");
}

class BadRequestException extends AppException {
  BadRequestException([String? message]) : super("Invalid request ");
}

class UnauthorizedException extends AppException {
  UnauthorizedException([String? message]) : super("Unauthorized request");
}

class InvalidInputException extends AppException {
  InvalidInputException([String? message]) : super("Invalid input Error");
}
