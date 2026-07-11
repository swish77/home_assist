import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:home_assist/core/ai/ai_generation_config.dart';
import 'package:home_assist/core/constants/api_constants.dart';
import 'package:home_assist/core/failures/failure.dart';
import 'package:home_assist/features/ai_assistant/data/datasource/gemini_remote_data_source.dart';
import 'package:home_assist/features/ai_assistant/data/models/ai_recommendation_model.dart';
import 'package:home_assist/features/ai_assistant/domain/entities/ai_recommendation.dart';

class GeminiRemoteDataSourceImpl implements GeminiRemoteDataSource{

  final Dio _dio;

  final String apiKey;

  GeminiRemoteDataSourceImpl({required Dio dio, required this.apiKey}): _dio = dio;

  @override
  Future<AiRecommendation> askAi(String prompt) async{


    try {
      final response = await _dio.post(
          "/models/${ApiConstants.geminiModel}:generateContent",
          queryParameters: {
            'key' : apiKey
          },
          data: {
            "contents":[
              {
                "parts": [
                  {
                    "text": prompt
                  }
                ],
              }
            ],

            "generationConfig" : AiGenerationConfig.generationConfig
          }
      );
      // print(response.data.toString());

      final jsonString = response.data['candidates'][0]['content']['parts'][0]['text'];
      final json = jsonDecode(jsonString);

      return AiRecommendationModel.fromJson(json);
    }
    on DioException catch (e) {

      // print("error status: ${e.response?.statusCode} ${e.response?.data}");
      if (e.response?.statusCode == 503) {
        throw Exception(
          'AI service is temporarily unavailable. Please try again later.',
        );
      }

      throw const NetworkFailure(
        'Unable to contact AI service.',
      );
    }
    catch (_) {
      throw Exception(
        'Something went wrong.',
      );
    }
  }

}