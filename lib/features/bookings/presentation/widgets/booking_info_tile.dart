import 'package:flutter/material.dart';
import 'package:home_assist/shared/widgets/icon_text.dart';

class BookingInfoTile extends StatelessWidget {
  final IconData icon;
  final String title;
  final String value;
  const BookingInfoTile({super.key, required this.icon, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconText(icon: icon, text: title, textStyle: Theme.of(context).textTheme.titleSmall,),
          Text(value, style: Theme.of(context).textTheme.bodyMedium,)
        ],
      ),
    );
  }
}
