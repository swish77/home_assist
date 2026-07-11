import 'package:dio/dio.dart';
import 'package:home_assist/features/services/data/data_source/services_remote_data_source.dart';
import 'package:home_assist/features/services/data/models/service_model.dart';
import 'package:home_assist/features/services/domain/entities/service.dart';

class ServicesRemoteDataSourceImpl implements ServicesRemoteDataSource{

  final Dio dio;

  ServicesRemoteDataSourceImpl({required this.dio});

  @override
  Future<List<Service>> getServices() async {
    try {
      final response = await dio.get('/services');

      final List data = response.data as List;

      // print("length: ${data.length}");

      return data
          .map((json) => ServiceModel.fromJson(json))
          .toList();

    } on DioException {
      throw Exception(
        'Unable to load services. Please try again.',
      );
    }
  }

}