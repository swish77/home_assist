import 'package:flutter/material.dart';
import 'package:home_assist/features/services/domain/entities/service_category.dart';
import 'package:home_assist/shared/widgets/icon_text.dart';

class CategoryHeader extends StatelessWidget {
  final ServiceCategory category;
  const CategoryHeader({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return

      // IconText(icon: category.icon,
      //   text: '${category.name} Services', textStyle: Theme.of(context).textTheme.titleLarge,);
      Text('${category.name} Services',
      style: Theme.of(context).textTheme.titleLarge!.copyWith(color: Theme.of(context).colorScheme.primary),);
  }
}
