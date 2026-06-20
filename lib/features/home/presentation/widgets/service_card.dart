import 'package:flutter/material.dart';
import 'package:home_assist/features/services/domain/entities/service.dart';

class ServiceCard extends StatelessWidget {
  final Service service;

  const ServiceCard({
    super.key,
    required this.service,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return SizedBox(
      width: 220,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 24,
                child: Icon(
                  service.category.icon,
                ),
              ),

              const SizedBox(height: 16),

              Text(
                service.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium,
              ),

              const SizedBox(height: 8),

              Text(
                service.category.name,
                style: theme.textTheme.bodyMedium,
              ),

              const Spacer(),

              Text(
                'Starting at ₹${service.startingPrice.toInt()}',
                style: theme.textTheme.titleSmall,
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: service.onTap,
                  child: const Text('Book Now'),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}