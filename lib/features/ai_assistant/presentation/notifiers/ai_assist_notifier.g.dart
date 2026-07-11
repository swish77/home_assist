// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ai_assist_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(AiAssistNotifier)
final aiAssistProvider = AiAssistNotifierProvider._();

final class AiAssistNotifierProvider
    extends $NotifierProvider<AiAssistNotifier, AiAssistState> {
  AiAssistNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'aiAssistProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$aiAssistNotifierHash();

  @$internal
  @override
  AiAssistNotifier create() => AiAssistNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(AiAssistState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<AiAssistState>(value),
    );
  }
}

String _$aiAssistNotifierHash() => r'c95891f10758eaed85dd40e3ee1bcf71fe15081e';

abstract class _$AiAssistNotifier extends $Notifier<AiAssistState> {
  AiAssistState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<AiAssistState, AiAssistState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<AiAssistState, AiAssistState>,
              AiAssistState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
