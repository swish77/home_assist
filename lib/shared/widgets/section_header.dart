import 'package:flutter/material.dart';

class SectionHeader extends StatelessWidget {
  final String sectionName;
  const SectionHeader({super.key, required this.sectionName});

  @override
  Widget build(BuildContext context) {
    return Text(sectionName, style: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: Colors.deepPurple.shade600
    ),);
  }
}
