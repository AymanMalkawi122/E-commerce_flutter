
import 'dart:async';
import 'package:dio/dio.dart';
import 'package:e_commerce/core/network/network_result.dart';
import '../logger/Logger.dart';

Future<NetworkResult<T>> performRequest<T>(String callerName, Future<Response> Function() block, T Function(Response) deserializer ) async {
  try {
    final result = await block();
    return Success<T>(deserializer(result));
  }
  on DioException catch(e) {
    log.e("Exception at $callerName", error: e);
    return Error<T>(e.message.toString(),e);
  }
  on Exception catch(e) {
    final message = "Non-network-related exception at: $callerName";
    log.e(message, error: e);
    return Error<T>(message, e);
  }
}