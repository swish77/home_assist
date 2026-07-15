// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bookings_list_notifier.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(BookingsListNotifier)
final bookingsListProvider = BookingsListNotifierProvider._();

final class BookingsListNotifierProvider
    extends $NotifierProvider<BookingsListNotifier, BookingsState> {
  BookingsListNotifierProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bookingsListProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bookingsListNotifierHash();

  @$internal
  @override
  BookingsListNotifier create() => BookingsListNotifier();

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BookingsState value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BookingsState>(value),
    );
  }
}

String _$bookingsListNotifierHash() =>
    r'910e2d8751d04cffb3525718f4d4f15df85611f4';

abstract class _$BookingsListNotifier extends $Notifier<BookingsState> {
  BookingsState build();
  @$mustCallSuper
  @override
  WhenComplete runBuild() {
    final ref = this.ref as $Ref<BookingsState, BookingsState>;
    final element =
        ref.element
            as $ClassProviderElement<
              AnyNotifier<BookingsState, BookingsState>,
              BookingsState,
              Object?,
              Object?
            >;
    return element.handleCreate(ref, build);
  }
}
