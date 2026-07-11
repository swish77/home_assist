// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'booking_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(bookingRemoteDataSource)
final bookingRemoteDataSourceProvider = BookingRemoteDataSourceProvider._();

final class BookingRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          BookingRemoteDataSource,
          BookingRemoteDataSource,
          BookingRemoteDataSource
        >
    with $Provider<BookingRemoteDataSource> {
  BookingRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bookingRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bookingRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<BookingRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BookingRemoteDataSource create(Ref ref) {
    return bookingRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BookingRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BookingRemoteDataSource>(value),
    );
  }
}

String _$bookingRemoteDataSourceHash() =>
    r'2c48b9417ac3ae4f635f02bece74e4c27f5b7117';

@ProviderFor(bookingRepository)
final bookingRepositoryProvider = BookingRepositoryProvider._();

final class BookingRepositoryProvider
    extends
        $FunctionalProvider<
          BookingRepository,
          BookingRepository,
          BookingRepository
        >
    with $Provider<BookingRepository> {
  BookingRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'bookingRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$bookingRepositoryHash();

  @$internal
  @override
  $ProviderElement<BookingRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  BookingRepository create(Ref ref) {
    return bookingRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(BookingRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<BookingRepository>(value),
    );
  }
}

String _$bookingRepositoryHash() => r'f78e9762e6eadda4f945e6e38c9a065e7d4b2ca2';

@ProviderFor(createBookingUseCase)
final createBookingUseCaseProvider = CreateBookingUseCaseProvider._();

final class CreateBookingUseCaseProvider
    extends
        $FunctionalProvider<
          CreateBookingUseCase,
          CreateBookingUseCase,
          CreateBookingUseCase
        >
    with $Provider<CreateBookingUseCase> {
  CreateBookingUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'createBookingUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$createBookingUseCaseHash();

  @$internal
  @override
  $ProviderElement<CreateBookingUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CreateBookingUseCase create(Ref ref) {
    return createBookingUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CreateBookingUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CreateBookingUseCase>(value),
    );
  }
}

String _$createBookingUseCaseHash() =>
    r'180a524a4e5485a5789c7588309254741ef6b3de';

@ProviderFor(getBookingUseCase)
final getBookingUseCaseProvider = GetBookingUseCaseProvider._();

final class GetBookingUseCaseProvider
    extends
        $FunctionalProvider<
          GetBookingUseCase,
          GetBookingUseCase,
          GetBookingUseCase
        >
    with $Provider<GetBookingUseCase> {
  GetBookingUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getBookingUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getBookingUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetBookingUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetBookingUseCase create(Ref ref) {
    return getBookingUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetBookingUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetBookingUseCase>(value),
    );
  }
}

String _$getBookingUseCaseHash() => r'4df009ade577d9c4bf42e3934ff3b72f208ca777';

@ProviderFor(cancelBookingUseCase)
final cancelBookingUseCaseProvider = CancelBookingUseCaseProvider._();

final class CancelBookingUseCaseProvider
    extends
        $FunctionalProvider<
          CancelBookingUseCase,
          CancelBookingUseCase,
          CancelBookingUseCase
        >
    with $Provider<CancelBookingUseCase> {
  CancelBookingUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'cancelBookingUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$cancelBookingUseCaseHash();

  @$internal
  @override
  $ProviderElement<CancelBookingUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  CancelBookingUseCase create(Ref ref) {
    return cancelBookingUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(CancelBookingUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<CancelBookingUseCase>(value),
    );
  }
}

String _$cancelBookingUseCaseHash() =>
    r'e5541b7d292172c5f378a239ce45e0debc3b2e9e';

@ProviderFor(rescheduleBookingUseCase)
final rescheduleBookingUseCaseProvider = RescheduleBookingUseCaseProvider._();

final class RescheduleBookingUseCaseProvider
    extends
        $FunctionalProvider<
          RescheduleBookingUseCase,
          RescheduleBookingUseCase,
          RescheduleBookingUseCase
        >
    with $Provider<RescheduleBookingUseCase> {
  RescheduleBookingUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'rescheduleBookingUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$rescheduleBookingUseCaseHash();

  @$internal
  @override
  $ProviderElement<RescheduleBookingUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  RescheduleBookingUseCase create(Ref ref) {
    return rescheduleBookingUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(RescheduleBookingUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<RescheduleBookingUseCase>(value),
    );
  }
}

String _$rescheduleBookingUseCaseHash() =>
    r'beab2e07b21f53718f2c4aef6f93d801d1635c9a';
