import 'package:home_assist/features/services/domain/entities/service.dart';

abstract interface class ServicesRemoteDataSource {
  Future<List<Service>> getServices();
}