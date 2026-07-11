import 'package:home_assist/features/ai_assistant/domain/entities/ai_recommendation.dart';
import 'package:home_assist/features/ai_assistant/domain/repositories/ai_repository.dart';

class GetAiRecommendationUseCase {

  final AiRepository aiRepository;

  GetAiRecommendationUseCase({required this.aiRepository});

  Future<AiRecommendation> call(String prompt){
    return aiRepository.getAiRecommendation(prompt);
  }

}