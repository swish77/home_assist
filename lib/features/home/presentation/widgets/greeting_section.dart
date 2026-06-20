import 'package:flutter/material.dart';

class GreetingSection extends StatelessWidget {
  final String userName;
  final String userLocation;
  const GreetingSection({super.key, required this.userName, required this.userLocation});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      // mainAxisSize: MainAxisSize.max,

      children: [
        Flexible(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Hi, $userName 👋',
                style: Theme.of(context).textTheme.headlineSmall,
                // style: TextStyle(fontSize: 24,
                //   fontWeight: FontWeight.bold),
              ),
              // SizedBox(height:10),
              Text('$userLocation 📍',
                style: Theme.of(context).textTheme.bodyMedium,
              )
            ],
          ),
        ),
        CircleAvatar()
      ],
    );
  }
}
