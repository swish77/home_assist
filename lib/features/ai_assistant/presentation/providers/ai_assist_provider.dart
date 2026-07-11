import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:home_assist/core/network/dio_provider.dart';
import 'package:home_assist/features/ai_assistant/data/datasource/gemini_remote_data_source.dart';
import 'package:home_assist/features/ai_assistant/data/datasource/gemini_remote_data_source_impl.dart';
import 'package:home_assist/features/ai_assistant/domain/repositories/ai_repository.dart';
import 'package:home_assist/features/ai_assistant/data/repositories/ai_repository_impl.dart';
import 'package:home_assist/features/ai_assistant/domain/usecases/get_ai_recommendation_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ai_assist_provider.g.dart';


@riverpod
GeminiRemoteDataSource geminiRemoteDataSource(Ref ref){
  return GeminiRemoteDataSourceImpl(dio: ref.read(dioProvider),
      apiKey : dotenv.env['GEMINI_API_KEY']!);
}

@riverpod
AiRepository aiRepository (Ref ref){
  return AiRepositoryImpl(remoteDataSource: ref.read(geminiRemoteDataSourceProvider));
}

@riverpod
GetAiRecommendationUseCase getAiRecommendationUseCase (Ref ref){
  return GetAiRecommendationUseCase(aiRepository: ref.read(aiRepositoryProvider));
}

