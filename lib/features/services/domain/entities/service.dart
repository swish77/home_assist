import 'package:home_assist/features/services/domain/entities/service_category.dart';

class Service {
  final String id;
  final String name;
  final ServiceCategory category;
  final double startingPrice;
  final String description;
  final String duration;
  final double rating;

  const Service({
    required this.id,
    required this.name,
    required this.category,
    required this.startingPrice,
    required this.description,
    required this.duration,
    required this.rating
  });
}