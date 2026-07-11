import 'package:home_assist/core/ai/ai_prompt_builder.dart';
import 'package:home_assist/features/ai_assistant/presentation/providers/ai_assist_provider.dart';
import 'package:home_assist/features/ai_assistant/presentation/state/ai_assist_state.dart';
import 'package:home_assist/features/services/presentation/providers/services_provider.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'ai_assist_notifier.g.dart';

@riverpod
 class AiAssistNotifier extends _$AiAssistNotifier {
  @override
  AiAssistState build(){
    return const AiAssistState();
  }

  Future<void> getAiReply(String problem) async {

    state = state.copyWith(
      isLoading: true,
      error: null,
    );

    if(problem.trim().isEmpty){
      state = state.copyWith(
        isLoading: false,
        error: Exception('Please describe your issue.')
      );
      return;
    }

    try{

      final services = await ref.read(allServicesProvider.future);

      final prompt = AiPromptBuilder.build(problem, services);

      final reply = await ref.read(getAiRecommendationUseCaseProvider)
          .call(prompt);

      state = state.copyWith(
        isLoading: false,
        recommendation: reply
      );

    }
    catch(e){
      state = state.copyWith(
        isLoading: false,
        error: e as Exception
      );
    }

  }
}