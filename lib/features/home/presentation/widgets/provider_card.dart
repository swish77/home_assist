import 'package:flutter/material.dart';
import 'package:home_assist/features/providers/domain/entities/service_providers.dart';
import 'package:home_assist/features/providers/presentation/screens/provider_profile_screen.dart';
import 'package:home_assist/shared/widgets/icon_text.dart';

class ProviderCard extends StatelessWidget {
  final ProviderModel providerModel;

  const ProviderCard({
    super.key,
    required this.providerModel,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 240,
      child: Card(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                      const CircleAvatar(
                        radius: 28,
                        child: Icon(Icons.person),
                      ),

                  // Spacer(),
                  SizedBox(width: 20,),

                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          providerModel.name,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context).textTheme.titleMedium,
                        ),

                        const SizedBox(height: 5),

                        Text(
                          providerModel.specialty,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),

                        const SizedBox(height: 4),

                        IconText(
                          icon: Icons.star,
                          text: providerModel.rating.toString(),
                        ),

                        const SizedBox(height: 4),

                        IconText(
                          icon: Icons.work_history,
                          text: providerModel.experience,
                        ),
                      ],
                    ),
                  ),

                ],
              ),
              SizedBox(height: 10,),

              FilledButton(
                onPressed: ()=>Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (_) => ProviderProfileScreen(
                      provider: providerModel,
                    ),
                  ),
                ),
                child: Text('View Profile',
                  style: Theme.of(context).textTheme.titleSmall!
                      .copyWith(
                    // color: Theme.of(context).colorScheme.onTertiary
                  ),),
              ),
            ],
          ),
        ),
      ),
    );
  }
}