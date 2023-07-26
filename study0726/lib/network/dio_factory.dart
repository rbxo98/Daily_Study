import 'package:flutter_dotenv/flutter_dotenv.dart';

import 'package:dio/dio.dart';
class DioFactory{
  static Dio getDio(){
    Dio dio =
    Dio(
      BaseOptions(
        baseUrl: dotenv.get("BASE_URL"),
        connectTimeout: Duration(seconds: 30),
        receiveTimeout: Duration(seconds: 30),
        responseType: ResponseType.json,
        headers: {
          "x-api-version":3
        }
      ),
    );
    return dio;
  }
}
