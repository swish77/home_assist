import 'package:home_assist/core/constants/categories.dart';
import 'package:home_assist/features/services/domain/entities/service_category.dart';

ServiceCategory categoryFromId(String id) {
  return categories.firstWhere(
        (category) => category.id == id,
    orElse: () => throw Exception('Unknown category id: $id'),
  );
}