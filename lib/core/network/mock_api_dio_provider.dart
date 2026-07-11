import 'package:dio/dio.dart';
import 'package:home_assist/core/constants/api_constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'mock_api_dio_provider.g.dart';

@riverpod
Dio mockApiDio(Ref ref){
  return Dio(
    BaseOptions(
      baseUrl: ApiConstants.mockApiBaseUrl,
      connectTimeout: Duration(seconds: 10),
      receiveTimeout: Duration(seconds: 30),
      headers: {
        "Content-Type" : "application/json"
      }
    )
  );
}
