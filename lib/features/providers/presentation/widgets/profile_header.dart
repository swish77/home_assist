import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final String name;
  final String specialty;
  const ProfileHeader({super.key, required this.name, required this.specialty});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 50,
          child: Icon(Icons.person),
        ),

        SizedBox(height: 10,),

        Text(
          name,
          textAlign: TextAlign.center,
          style: theme.textTheme.titleMedium,),

        SizedBox(height: 5,),

        Text(specialty,
          textAlign: TextAlign.center,
          style: theme.textTheme.titleSmall,),

      ],
    );
  }
}
