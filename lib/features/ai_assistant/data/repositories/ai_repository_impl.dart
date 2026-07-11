import 'package:home_assist/features/ai_assistant/data/datasource/gemini_remote_data_source.dart';
import 'package:home_assist/features/ai_assistant/domain/entities/ai_recommendation.dart';
import 'package:home_assist/features/ai_assistant/domain/repositories/ai_repository.dart';

class AiRepositoryImpl implements AiRepository{

  final GeminiRemoteDataSource remoteDataSource;

  AiRepositoryImpl({required this.remoteDataSource});

  @override
  Future<AiRecommendation> getAiRecommendation(String prompt) {
    return remoteDataSource.askAi(prompt);
  }
}