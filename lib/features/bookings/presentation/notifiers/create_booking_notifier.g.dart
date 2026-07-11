// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_booking_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(CreateBookingNotifier)
final createBookingProvider = CreateBookingNotifierProvider._();

final class CreateBookingNotifierProvider
    extends $NotifierProvider<CreateBookingNotifier, CreateBookingState> {
  CreateBookingNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createBookingProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createBookingNotifierHash();

  @$internal
  @override
  CreateBookingNotifier create() => CreateBookingNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateBookingState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateBookingState>(value),
    );
  }
}

String _$createBookingNotifierHash() =>
    r'5a7e592adfa1bc14bd350daed9d589f8d659ae6a';

abstract class _$CreateBookingNotifier extends $Notifier<CreateBookingState> {
  CreateBookingState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<CreateBookingState, CreateBookingState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<CreateBookingState, CreateBookingState>,
              CreateBookingState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
