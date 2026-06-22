import 'package:flutter/material.dart';
import 'package:home_assist/features/home/presentation/widgets/provider_card.dart';
import 'package:home_assist/features/providers/domain/entities/service_providers.dart';
import 'package:home_assist/shared/widgets/section_header.dart';

class TopProvidersSection extends StatefulWidget {
  const TopProvidersSection({super.key});

  @override
  State<TopProvidersSection> createState() => _TopProvidersSectionState();
}

class _TopProvidersSectionState extends State<TopProvidersSection> {

  final providers = [
    ProviderModel(
      avatar: '',
      name: 'Ravi Kumar',
      specialty: 'Electrician',
      rating: 4.8,
      experience: '7 Years',
      onTap: () {},
    ),
    ProviderModel(
      avatar: '',
      name: 'Arjun Patel',
      specialty: 'Plumber',
      rating: 4.9,
      experience: '10 Years',
      onTap: () {},
    ),
    ProviderModel(
      avatar: '',
      name: 'Vikram Singh',
      specialty: 'AC Technician',
      rating: 4.7,
      experience: '5 Years',
      onTap: () {},
    ),
    ProviderModel(
      avatar: '',
      name: 'Rahul Sharma',
      specialty: 'House Painter',
      rating: 4.6,
      experience: '8 Years',
      onTap: () {},
    ),
  ];



  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 10,),
        SectionHeader(sectionName: 'Top Providers'),
        SizedBox(height: 10,),
        SizedBox(
          height: 200,
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
