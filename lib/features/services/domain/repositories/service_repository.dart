import 'package:home_assist/features/services/domain/entities/service.dart';

abstract interface class ServiceRepository {
  Future<List<Service>> getServices();
}