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
      onTap: () {},
    ),
    Service(
      id: 'S2',
      name: 'Ceiling Fan Installation',
      category: categories[0],
      startingPrice: 199,
      onTap: () {},
    ),
    Service(
      id: 'S3',
      name: 'Pipe Leak Repair',
      category: categories[1],
      startingPrice: 349,
      onTap: () {},
    ),
    Service(
      id: 'S4',
      name: 'Drain Cleaning',
      category: categories[1],
      startingPrice: 249,
      onTap: () {},
    ),
    Service(
      id: 'S5',
      name: 'Deep Home Cleaning',
      category: categories[2],
      startingPrice: 799,
      onTap: () {},
    ),
    Service(
      id: 'S6',
      name: 'Sofa Cleaning',
      category: categories[2],
      startingPrice: 499,
      onTap: () {},
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
            separatorBuilder: (_, __) =>
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
