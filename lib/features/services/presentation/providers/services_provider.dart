import 'package:home_assist/core/network/mock_api_dio_provider.dart';
import 'package:home_assist/features/services/data/data_source/services_remote_data_source.dart';
import 'package:home_assist/features/services/data/data_source/services_remote_data_source_impl.dart';
import 'package:home_assist/features/services/domain/entities/service.dart';
import 'package:home_assist/features/services/domain/repositories/service_repository.dart';
import 'package:home_assist/features/services/data/repositories/service_repository_impl.dart';
import 'package:home_assist/features/services/domain/usecases/get_services_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'services_provider.g.dart';

@riverpod
ServicesRemoteDataSource servicesRemoteDataSource(Ref ref){
  return ServicesRemoteDataSourceImpl(dio: ref.read(mockApiDioProvider));
}

@riverpod
ServiceRepository servicesRepository(Ref ref){
  return ServiceRepositoryImpl(remoteDataSource: ref.read(servicesRemoteDataSourceProvider));
}

@riverpod
GetServicesUseCase getServicesUseCase(Ref ref){
  return GetServicesUseCase(serviceRepository: ref.read(servicesRepositoryProvider));
}

@riverpod
Future<List<Service>> allServices(Ref ref) async {
  return ref.read(getServicesUseCaseProvider).call();
}

@riverpod
Future<List<Service>> popularServices(Ref ref) async {
  final allServices = await ref.watch(allServicesProvider.future);

  return allServices
      .where((service) => service.isPopular)
      .toList();
}