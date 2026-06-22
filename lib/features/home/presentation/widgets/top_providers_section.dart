import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/providers.dart';
import 'package:home_assist/features/home/presentation/widgets/provider_card.dart';
import 'package:home_assist/features/providers/domain/entities/service_providers.dart';
import 'package:home_assist/shared/widgets/section_header.dart';

class TopProvidersSection extends StatefulWidget {
  const TopProvidersSection({super.key});

  @override
  State<TopProvidersSection> createState() => _TopProvidersSectionState();
}

class _TopProvidersSectionState extends State<TopProvidersSection> {

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        SectionHeader(sectionName: 'Top Providers'),
        SizedBox(height: 10,),
        SizedBox(
          height: 220,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            physics: const BouncingScrollPhysics(),
            itemCount: providers.length,
            separatorBuilder: (_, _) => const SizedBox(width: 12),
            itemBuilder: (context, index) {
              return ProviderCard(
                providerModel: providers[index],
              );
            },
          ),
        )
      ],
    );
  }
}
