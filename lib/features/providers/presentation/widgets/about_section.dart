import 'package:flutter/material.dart';
import 'package:home_assist/shared/widgets/section_header.dart';

class AboutSection extends StatelessWidget {
  final String about;
  const AboutSection({super.key, required this.about});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SectionHeader(sectionName: 'About'),

        SizedBox(height: 10,),

        Text(about,
          style: theme.textTheme.labelLarge!
              .copyWith(color: theme.colorScheme.secondary),)
      ],
    );
  }
}
