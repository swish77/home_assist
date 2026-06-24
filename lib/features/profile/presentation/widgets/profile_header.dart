import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  const ProfileHeader({
    super.key,
    required this.textTheme,
  });

  final TextTheme textTheme;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30,
          child: Icon(Icons.person),
        ),
        SizedBox(height: 10),

        Text('Peter Paul', style: textTheme.titleMedium),
        Text('peterpaul@gmail.com', style: textTheme.titleMedium),
      ],
    );
  }
}