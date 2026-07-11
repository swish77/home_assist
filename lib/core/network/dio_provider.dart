import 'package:dio/dio.dart';
import 'package:home_assist/core/constants/api_constants.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'dio_provider.g.dart';


  @riverpod
  Dio dio(Ref ref) {
    return Dio(
      BaseOptions(
        baseUrl: ApiConstants.geminiBaseUrl,
        connectTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 40),
        headers: {
          'Content-Type': 'application/json',
        },
      ),
    );
  }

