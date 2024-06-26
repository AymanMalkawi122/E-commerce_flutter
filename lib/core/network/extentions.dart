
import 'package:dio/dio.dart';

extension IsOk on Response {
  bool get isOk {
    return (statusCode ?? 0) ~/ 100 == 2;
  }
}