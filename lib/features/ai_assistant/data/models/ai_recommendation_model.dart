import 'package:home_assist/features/ai_assistant/domain/entities/ai_recommendation.dart';

class AiRecommendationModel extends AiRecommendation{
  AiRecommendationModel({required super.recommendedServiceIds,
    required super.explanation});

  factory AiRecommendationModel.fromJson(Map<String, dynamic> json){
    return AiRecommendationModel(
        recommendedServiceIds: List<String>.from(json['recommendedServiceIds']),
        explanation: json['explanation']);
  }

  Map<String, dynamic> toJson() {
    return {
      'recommendedServiceIds': recommendedServiceIds,
      'explanation': explanation,
    };
  }

}