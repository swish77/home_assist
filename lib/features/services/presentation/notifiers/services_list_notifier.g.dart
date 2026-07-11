// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(ServicesListNotifier)
final servicesListProvider = ServicesListNotifierProvider._();

final class ServicesListNotifierProvider
    extends $NotifierProvider<ServicesListNotifier, ServicesState> {
  ServicesListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'servicesListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$servicesListNotifierHash();

  @$internal
  @override
  ServicesListNotifier create() => ServicesListNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ServicesState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ServicesState>(value),
    );
  }
}

String _$servicesListNotifierHash() =>
    r'2cb213a72bb5c94dff5f37aa697932a60be10f6a';

abstract class _$ServicesListNotifier extends $Notifier<ServicesState> {
  ServicesState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<ServicesState, ServicesState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<ServicesState, ServicesState>,
              ServicesState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
