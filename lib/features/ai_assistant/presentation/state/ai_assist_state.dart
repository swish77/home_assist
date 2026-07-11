import 'package:home_assist/features/ai_assistant/domain/entities/ai_recommendation.dart';

class AiAssistState {
  final bool isLoading;
  final AiRecommendation? recommendation;
  final Exception? error;

  const AiAssistState({
    this.isLoading = false,
    this.recommendation,
    this.error,
  });

  AiAssistState copyWith({
    bool? isLoading,
    AiRecommendation? recommendation,
    Exception? error,
  })  {
    return AiAssistState(
      isLoading: isLoading ?? this.isLoading,
      recommendation: recommendation ?? this.recommendation,
      error: error,
    );
  }
}