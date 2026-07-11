// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_assist_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(geminiRemoteDataSource)
final geminiRemoteDataSourceProvider = GeminiRemoteDataSourceProvider._();

final class GeminiRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          GeminiRemoteDataSource,
          GeminiRemoteDataSource,
          GeminiRemoteDataSource
        >
    with $Provider<GeminiRemoteDataSource> {
  GeminiRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'geminiRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$geminiRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<GeminiRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GeminiRemoteDataSource create(Ref ref) {
    return geminiRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GeminiRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GeminiRemoteDataSource>(value),
    );
  }
}

String _$geminiRemoteDataSourceHash() =>
    r'f27d6d1cb3c240aeece001388dd5ff887ed301ec';

@ProviderFor(aiRepository)
final aiRepositoryProvider = AiRepositoryProvider._();

final class AiRepositoryProvider
    extends $FunctionalProvider<AiRepository, AiRepository, AiRepository>
    with $Provider<AiRepository> {
  AiRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aiRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aiRepositoryHash();

  @$internal
  @override
  $ProviderElement<AiRepository> $createElement($ProviderPointer pointer) =>
      $ProviderElement(pointer);

  @override
  AiRepository create(Ref ref) {
    return aiRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AiRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AiRepository>(value),
    );
  }
}

String _$aiRepositoryHash() => r'3af6e8b418fca4156cc0ef14892898f9b6151e7f';

@ProviderFor(getAiRecommendationUseCase)
final getAiRecommendationUseCaseProvider =
    GetAiRecommendationUseCaseProvider._();

final class GetAiRecommendationUseCaseProvider
    extends
        $FunctionalProvider<
          GetAiRecommendationUseCase,
          GetAiRecommendationUseCase,
          GetAiRecommendationUseCase
        >
    with $Provider<GetAiRecommendationUseCase> {
  GetAiRecommendationUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getAiRecommendationUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getAiRecommendationUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetAiRecommendationUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetAiRecommendationUseCase create(Ref ref) {
    return getAiRecommendationUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetAiRecommendationUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetAiRecommendationUseCase>(value),
    );
  }
}

String _$getAiRecommendationUseCaseHash() =>
    r'a4a382356317f4f50b0e93019b453c96dae2c981';
