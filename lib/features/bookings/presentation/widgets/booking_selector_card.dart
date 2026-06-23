import 'package:flutter/material.dart';

class BookingSelectorCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;
  final VoidCallback onTapSchedule;
  final bool hasError;
  const BookingSelectorCard({super.key, required this.onTapSchedule, required this.title, required this.value, required this.icon,
    required this.hasError});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTapSchedule,
      child: Card(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            color: hasError
                ? Colors.red
                : Colors.transparent,
          ),
        ),
        child: Column(
          children: [
            SizedBox(height: 10,),

            Icon(icon, size: 32,),

            SizedBox(height: 10,),

            Text(title, style: Theme.of(context).textTheme.titleMedium,),

            SizedBox(height: 10,),

            Text(value, style: Theme.of(context).textTheme.bodyMedium,),

            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
