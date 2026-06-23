import 'package:flutter/material.dart';
import 'package:home_assist/features/services/domain/entities/service.dart';

class ServiceSummaryCard extends StatelessWidget {
  final Service service;
  const ServiceSummaryCard({super.key, required this.service});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        leading: CircleAvatar(
          child: Icon(service.category.icon),
        ),
        title: Text(service.name),
        subtitle: Text(
          'Starting at ₹${service.startingPrice}',
        ),
      ),
    );
  }
}
