import 'package:home_assist/features/services/domain/entities/service.dart';
import 'package:home_assist/features/services/domain/repositories/service_repository.dart';

class GetServicesUseCase {
  final ServiceRepository serviceRepository;

  GetServicesUseCase({required this.serviceRepository});

  Future<List<Service>> call(){
    return serviceRepository.getServices();
  }

}