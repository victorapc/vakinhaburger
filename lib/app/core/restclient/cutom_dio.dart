import 'package:dio/dio.dart';
import 'package:dio/io.dart';
import 'package:vakinhaburger/app/core/config/env/env.dart';

class CutomDio extends DioForNative {
  CutomDio()
      : super(BaseOptions(
            baseUrl: Env.i['backend_base_url'] ?? '',
            connectTimeout: const Duration(seconds: 5),
            receiveTimeout: const Duration(seconds: 60))) {
    interceptors.add(LogInterceptor(
      requestBody: true,
      responseBody: true,
      requestHeader: true,
    ));
  }

  CutomDio auth() {
    return this;
  }

  CutomDio unauth() {
    return this;
  }
}
