import 'package:flutter/material.dart';
import 'package:home_assist/features/home/presentation/widgets/category_chip.dart';
import 'package:home_assist/features/services/domain/entities/service_category.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({super.key});

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {

  final categories = [
    ServiceCategory(
      id: '1',
      name: 'Electrical',
      icon: Icons.electrical_services,
    ),
    ServiceCategory(
      id: '2',
      name: 'Plumbing',
      icon: Icons.plumbing,
    ),
    ServiceCategory(
      id: '3',
      name: 'Cleaning',
      icon: Icons.cleaning_services,
    ),
    ServiceCategory(
      id: '4',
      name: 'Painting',
      icon: Icons.format_paint,
    ),
    ServiceCategory(
      id: '5',
      name: 'Gardening',
      icon: Icons.yard,
    ),
    ServiceCategory(
      id: '6',
      name: 'Carpentry',
      icon: Icons.handyman,
    ),
    ServiceCategory(
      id: '7',
      name: 'AC Repair',
      icon: Icons.ac_unit,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Categories',
            style: Theme.of(context).textTheme.titleMedium!.
            copyWith(color: Colors.deepPurple.shade600),
          ),
          const SizedBox(height: 12),

          Wrap(
            runSpacing: 10,
            spacing: 20,
            children: categories.map((category){
              return CategoryChip(title: category.name, icon: category.icon, onTap: (){});
            }).toList(),
          )
        ],
      ),
    );
  }
}
