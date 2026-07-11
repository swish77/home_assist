// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'services_provider.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint, type=warning

@ProviderFor(servicesRemoteDataSource)
final servicesRemoteDataSourceProvider = ServicesRemoteDataSourceProvider._();

final class ServicesRemoteDataSourceProvider
    extends
        $FunctionalProvider<
          ServicesRemoteDataSource,
          ServicesRemoteDataSource,
          ServicesRemoteDataSource
        >
    with $Provider<ServicesRemoteDataSource> {
  ServicesRemoteDataSourceProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'servicesRemoteDataSourceProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$servicesRemoteDataSourceHash();

  @$internal
  @override
  $ProviderElement<ServicesRemoteDataSource> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ServicesRemoteDataSource create(Ref ref) {
    return servicesRemoteDataSource(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ServicesRemoteDataSource value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ServicesRemoteDataSource>(value),
    );
  }
}

String _$servicesRemoteDataSourceHash() =>
    r'702b6276a8b1c6ed78bd021c3c8fd2866eb9119a';

@ProviderFor(servicesRepository)
final servicesRepositoryProvider = ServicesRepositoryProvider._();

final class ServicesRepositoryProvider
    extends
        $FunctionalProvider<
          ServiceRepository,
          ServiceRepository,
          ServiceRepository
        >
    with $Provider<ServiceRepository> {
  ServicesRepositoryProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'servicesRepositoryProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$servicesRepositoryHash();

  @$internal
  @override
  $ProviderElement<ServiceRepository> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  ServiceRepository create(Ref ref) {
    return servicesRepository(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(ServiceRepository value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<ServiceRepository>(value),
    );
  }
}

String _$servicesRepositoryHash() =>
    r'2e61bb4fbc98913851da575ecbb023faff9474c6';

@ProviderFor(getServicesUseCase)
final getServicesUseCaseProvider = GetServicesUseCaseProvider._();

final class GetServicesUseCaseProvider
    extends
        $FunctionalProvider<
          GetServicesUseCase,
          GetServicesUseCase,
          GetServicesUseCase
        >
    with $Provider<GetServicesUseCase> {
  GetServicesUseCaseProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'getServicesUseCaseProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$getServicesUseCaseHash();

  @$internal
  @override
  $ProviderElement<GetServicesUseCase> $createElement(
    $ProviderPointer pointer,
  ) => $ProviderElement(pointer);

  @override
  GetServicesUseCase create(Ref ref) {
    return getServicesUseCase(ref);
  }

  /// {@macro riverpod.override_with_value}
  Override overrideWithValue(GetServicesUseCase value) {
    return $ProviderOverride(
      origin: this,
      providerOverride: $SyncValueProvider<GetServicesUseCase>(value),
    );
  }
}

String _$getServicesUseCaseHash() =>
    r'923fdfa17f745872c4730d59a0e8a394e48553b5';

@ProviderFor(allServices)
final allServicesProvider = AllServicesProvider._();

final class AllServicesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Service>>,
          List<Service>,
          FutureOr<List<Service>>
        >
    with $FutureModifier<List<Service>>, $FutureProvider<List<Service>> {
  AllServicesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'allServicesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$allServicesHash();

  @$internal
  @override
  $FutureProviderElement<List<Service>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Service>> create(Ref ref) {
    return allServices(ref);
  }
}

String _$allServicesHash() => r'ae26c51a72a5f79cb17927f2321da541275d5052';

@ProviderFor(popularServices)
final popularServicesProvider = PopularServicesProvider._();

final class PopularServicesProvider
    extends
        $FunctionalProvider<
          AsyncValue<List<Service>>,
          List<Service>,
          FutureOr<List<Service>>
        >
    with $FutureModifier<List<Service>>, $FutureProvider<List<Service>> {
  PopularServicesProvider._()
    : super(
        from: null,
        argument: null,
        retry: null,
        name: r'popularServicesProvider',
        isAutoDispose: true,
        dependencies: null,
        $allTransitiveDependencies: null,
      );

  @override
  String debugGetCreateSourceHash() => _$popularServicesHash();

  @$internal
  @override
  $FutureProviderElement<List<Service>> $createElement(
    $ProviderPointer pointer,
  ) => $FutureProviderElement(pointer);

  @override
  FutureOr<List<Service>> create(Ref ref) {
    return popularServices(ref);
  }
}

String _$popularServicesHash() => r'ad5227d9988dec264eda53cef82c25621b0cff55';
