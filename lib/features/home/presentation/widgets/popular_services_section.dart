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
      id: '1',
      name: 'Electrical Wiring Repair',
      category: categories[0],
      startingPrice: 299,
      onTap: () {},
    ),
    Service(
      id: '2',
      name: 'Ceiling Fan Installation',
      category: categories[0],
      startingPrice: 199,
      onTap: () {},
    ),
    Service(
      id: '3',
      name: 'Pipe Leak Repair',
      category: categories[1],
      startingPrice: 349,
      onTap: () {},
    ),
    Service(
      id: '4',
      name: 'Drain Cleaning',
      category: categories[1],
      startingPrice: 249,
      onTap: () {},
    ),
    Service(
      id: '5',
      name: 'Deep Home Cleaning',
      category: categories[2],
      startingPrice: 799,
      onTap: () {},
    ),
    Service(
      id: '6',
      name: 'Sofa Cleaning',
      category: categories[2],
      startingPrice: 499,
      onTap: () {},
    ),
    Service(
      id: '7',
      name: 'Wall Painting',
      category: categories[3],
      startingPrice: 1499,
      onTap: () {},
    ),
    Service(
      id: '8',
      name: 'Interior Touch-Up Painting',
      category: categories[3],
      startingPrice: 899,
      onTap: () {},
    ),
    Service(
      id: '9',
      name: 'Lawn Maintenance',
      category: categories[4],
      startingPrice: 599,
      onTap: () {},
    ),
    Service(
      id: '10',
      name: 'Tree Trimming',
      category: categories[4],
      startingPrice: 699,
      onTap: () {},
    ),
    Service(
      id: '11',
      name: 'Furniture Assembly',
      category: categories[5],
      startingPrice: 399,
      onTap: () {},
    ),
    Service(
      id: '12',
      name: 'Door Repair',
      category: categories[5],
      startingPrice: 299,
      onTap: () {},
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
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
