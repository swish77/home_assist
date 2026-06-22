import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/providers.dart';
import 'package:home_assist/shared/widgets/section_header.dart';

class ServicesOfferedSection extends StatelessWidget {
  final List<String> servicesOffered;
  const ServicesOfferedSection({super.key, required this.servicesOffered});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text('About',
        //   style: theme.textTheme.titleMedium, ),

        SectionHeader(sectionName: 'Services Offered'),

        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: servicesOffered.map((service){
            return ListTile(
              title: Text(service,
                style: theme.textTheme.labelLarge!
                  // .copyWith(color: theme.colorScheme.primary),
              ),
              leading: Icon(Icons.check_circle, color: theme.colorScheme.inversePrimary,),
            );
          }).toList(),
        )
      ],
    );
  }
}
