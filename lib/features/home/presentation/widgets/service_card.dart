import 'package:flutter/material.dart';
import 'package:home_assist/app/theme/app_colors.dart';
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
        elevation: 2,
        color: AppColors.seed.shade200,
        shape: RoundedRectangleBorder(
          side: BorderSide(width: 0.5, color: AppColors.seed, ),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CircleAvatar(
                radius: 24,
                backgroundColor: theme.colorScheme.onInverseSurface,
                // backgroundColor: theme.colorScheme.primary,
                child: Icon(
                  service.category.icon, color: theme.colorScheme.primary,
                ),
              ),

              const SizedBox(height: 16),

              Text(
                service.name,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.titleMedium!.copyWith(
                  color: theme.colorScheme.onTertiary
                ),
              ),

              const SizedBox(height: 8),

              Text(
                service.category.name,
                style: theme.textTheme.bodyMedium!.copyWith(
                    color: theme.colorScheme.onTertiary
                ),
              ),

              const Spacer(),

              Text(
                'Starting at ₹${service.startingPrice.toInt()}',
                style: theme.textTheme.titleSmall!.copyWith(
                    color: theme.colorScheme.onTertiary
                ),
              ),

              const SizedBox(height: 12),

              SizedBox(
                width: double.infinity,
                child: FilledButton(
                  onPressed: service.onTap,
                  style: FilledButton.styleFrom(
                    backgroundColor: theme.colorScheme.onInverseSurface,
                      // minimumSize: const Size(double.infinity, 40),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                  child: Text('Book Now',
                      style: theme.textTheme.titleSmall!.copyWith(
                          color: theme.colorScheme.primary
                      )
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}