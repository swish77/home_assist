import 'package:flutter/material.dart';
import 'package:home_assist/features/services/domain/entities/service.dart';

class ServiceCard extends StatelessWidget {
  final Service service;
  const ServiceCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: Icon(
          service.category.icon,
        ),
        title: Text(service.name),
        subtitle: Text(
          'Starting at ₹${service.startingPrice}',
        ),
        trailing: Icon(
          Icons.arrow_forward_ios,
          size: 16,
        ),
      ),
    );
  }
}
