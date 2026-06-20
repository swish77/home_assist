import 'dart:ui';

import 'package:home_assist/features/services/domain/entities/service_category.dart';

class Service {
  final String id;
  final String name;
  final ServiceCategory category;
  final double startingPrice;
  final VoidCallback onTap;

  const Service({
    required this.id,
    required this.name,
    required this.category,
    required this.startingPrice,
    required this.onTap,
  });
}