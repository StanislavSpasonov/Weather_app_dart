import 'package:dio/dio.dart';

class Api {
  static const _receiveTimeout = Duration(microseconds: 15000);
  static const _connectTimeout = Duration(microseconds: 15000);
  static const _sendTimeout = Duration(microseconds: 15000);
  static const _responseType = ResponseType.json;
  final Dio dio;
  Api()
      : dio = Dio(BaseOptions(
          connectTimeout: _connectTimeout,
          receiveTimeout: _receiveTimeout,
          sendTimeout: _sendTimeout,
          responseType: _responseType,
        ));
}
