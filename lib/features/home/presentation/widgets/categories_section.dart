import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/categories.dart';
import 'package:home_assist/features/home/presentation/widgets/category_chip.dart';
import 'package:home_assist/features/services/domain/entities/service_category.dart';
import 'package:home_assist/shared/widgets/section_header.dart';

class CategoriesSection extends StatefulWidget {
  const CategoriesSection({super.key});

  @override
  State<CategoriesSection> createState() => _CategoriesSectionState();
}

class _CategoriesSectionState extends State<CategoriesSection> {



  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SectionHeader(sectionName: 'Categories'),
          const SizedBox(height: 12),

          // Wrap(
          //   runSpacing: 10,
          //   spacing: 15,
          //   children: categories.map((category){
          //     return CategoryChip(title: category.name, icon: category.icon, onTap: (){});
          //   }).toList(),
          // )
          SizedBox(
            height: 50,
            child: ListView.builder(
              shrinkWrap: true,
              scrollDirection: Axis.horizontal,
              itemCount: categories.length,
                itemBuilder: (context, index){
              return CategoryChip(title: categories[index].name, icon: categories[index].icon, onTap: (){});
            }),
          )
        ],
      ),
    );
  }
}
