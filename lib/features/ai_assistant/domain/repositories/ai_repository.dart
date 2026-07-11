import 'package:home_assist/features/ai_assistant/domain/entities/ai_recommendation.dart';

abstract interface class AiRepository {
  Future<AiRecommendation> getAiRecommendation(String prompt);
}