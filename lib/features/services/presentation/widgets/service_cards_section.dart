import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/services.dart';
import 'package:home_assist/features/services/domain/entities/service_category.dart';
import 'package:home_assist/features/services/presentation/widgets/service_card.dart';

class ServiceCardsSection extends StatelessWidget {
  final String searchQuery;
  final ServiceCategory category;
  const ServiceCardsSection({super.key, required this.category, required this.searchQuery});

  @override
  Widget build(BuildContext context) {
    final filteredServices = services.where((service) {
      final matchesCategory = service.category.id == category.id;

      final matchesSearchQuery = searchQuery == '' ||
      service.name.toLowerCase().contains(searchQuery.toLowerCase());

      return matchesCategory && matchesSearchQuery;

    }).toList();
    
    
    return filteredServices.isEmpty ?  Text('No Services Found'):
      Expanded(
      child: ListView.builder(
        itemCount: filteredServices.length,
        shrinkWrap: true,
        itemBuilder: (context, index){
            return ServiceCard(service: filteredServices[index]);
      }),
    );
  }
}
