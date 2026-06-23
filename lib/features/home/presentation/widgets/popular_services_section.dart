import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/categories.dart';
import 'package:home_assist/features/home/presentation/widgets/service_card.dart';
import 'package:home_assist/features/services/domain/entities/service.dart';
import 'package:home_assist/shared/widgets/section_header.dart';

class PopularServicesSection extends StatefulWidget {
  const PopularServicesSection({super.key});

  @override
  State<PopularServicesSection> createState() => _PopularServicesSectionState();
}

class _PopularServicesSectionState extends State<PopularServicesSection> {

  final popularServices = [
    Service(
      id: 'S1',
      name: 'Electrical Wiring Repair',
      category: categories[0],
      startingPrice: 299,
      rating: 4.8,
      duration: '1 - 2 Hours',
      description:
      'Professional diagnosis and repair of faulty electrical wiring, switches, sockets, and minor electrical issues.',
    ),
    Service(
      id: 'S2',
      name: 'Ceiling Fan Installation',
      category: categories[0],
      startingPrice: 199,
      rating: 4.7,
      duration: '30 - 60 Minutes',
      description:
      'Safe and efficient installation of ceiling fans, including wiring checks and mounting support.',
    ),
    Service(
      id: 'S3',
      name: 'Pipe Leak Repair',
      category: categories[1],
      startingPrice: 349,
      rating: 4.9,
      duration: '1 - 2 Hours',
      description:
      'Detection and repair of leaking pipes to prevent water damage and restore proper water flow.',
    ),
    Service(
      id: 'S4',
      name: 'Drain Cleaning',
      category: categories[1],
      startingPrice: 249,
      rating: 4.6,
      duration: '45 - 90 Minutes',
      description:
      'Removal of clogs and debris from drains to ensure smooth drainage and prevent blockages.',
    ),
    Service(
      id: 'S5',
      name: 'Deep Home Cleaning',
      category: categories[2],
      startingPrice: 799,
      rating: 4.9,
      duration: '3 - 5 Hours',
      description:
      'Comprehensive cleaning of living spaces, including floors, kitchens, bathrooms, and hard-to-reach areas.',
    ),
    Service(
      id: 'S6',
      name: 'Sofa Cleaning',
      category: categories[2],
      startingPrice: 499,
      rating: 4.7,
      duration: '1 - 2 Hours',
      description:
      'Professional sofa cleaning to remove dust, stains, allergens, and odors from upholstery.',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        SectionHeader(sectionName: 'Popular Services'),
        SizedBox(height: 10,),

        SizedBox(
          height: 260,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: popularServices.length,
            separatorBuilder: (_, _) =>
            const SizedBox(width: 12),
            itemBuilder: (context, index) {
              return ServiceCard(
                service: popularServices[index],
              );
            },
          ),
        ),

      ],
    );
  }
}
