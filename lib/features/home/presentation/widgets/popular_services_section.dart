import 'package:flutter/material.dart';
import 'package:home_assist/features/home/presentation/widgets/service_card.dart';
import 'package:home_assist/features/services/domain/entities/service.dart';
import 'package:home_assist/shared/widgets/section_header.dart';

class PopularServicesSection extends StatelessWidget {
  const PopularServicesSection({super.key, required this.services});
  final List<Service> services;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 20,),
        SectionHeader(sectionName: 'Popular Services'),
        SizedBox(height: 10,),

        SizedBox(
          // height: 260,
          height: MediaQuery.of(context).size.height * 0.32,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemCount: services.length,
            separatorBuilder: (_, _) =>
            const SizedBox(width: 12),
            itemBuilder: (context, index) {
              return ServiceCard(
                service: services[index],
              );
            },
          ),
        ),

      ],
    );
  }
}
