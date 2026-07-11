import 'package:home_assist/core/constants/category_mapper.dart';
import 'package:home_assist/features/services/domain/entities/service.dart';

class ServiceModel extends Service {
  const ServiceModel({
    required super.id,
    required super.name,
    required super.category,
    required super.startingPrice,
    required super.description,
    required super.duration,
    required super.rating,
    required super.isPopular
  });

  factory ServiceModel.fromJson(Map<String, dynamic> json) {
    return ServiceModel(
      id: json['id'],
      name: json['name'],
      category: categoryFromId(json['categoryId']),
      startingPrice: (json['startingPrice'] as num).toDouble(),
      description: json['description'],
      duration: json['duration'],
      rating: (json['rating'] as num).toDouble(),
      isPopular: json['isPopular'],
    );
  }
}