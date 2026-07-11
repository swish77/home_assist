import 'package:home_assist/features/ai_assistant/domain/entities/ai_recommendation.dart';

abstract interface class GeminiRemoteDataSource {

  Future<AiRecommendation> askAi(String prompt);
}