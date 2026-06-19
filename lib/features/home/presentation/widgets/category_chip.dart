import 'package:flutter/material.dart';

class CategoryChip extends StatelessWidget {
  final String title;
  final IconData icon;
  final VoidCallback onTap;

  const CategoryChip({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return ActionChip(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20)
      ),
      avatar: Container(
        // width: 90,
        // height: 90,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.inversePrimary,
        ),
        child: Icon(
          icon,
          size: 18,
        ),
      ),
      label: Text(title),
      onPressed: onTap,
    );
  }
}