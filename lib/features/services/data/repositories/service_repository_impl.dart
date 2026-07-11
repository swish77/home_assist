import 'package:home_assist/features/services/data/data_source/services_remote_data_source.dart';
import 'package:home_assist/features/services/domain/entities/service.dart';
import 'package:home_assist/features/services/domain/repositories/service_repository.dart';

class ServiceRepositoryImpl implements ServiceRepository{

  final ServicesRemoteDataSource remoteDataSource;

  ServiceRepositoryImpl({required this.remoteDataSource});

  @override
  Future<List<Service>> getServices() {
    return remoteDataSource.getServices();
  }

}