import 'package:flutter/material.dart';

class BookNowButton extends StatelessWidget {
  final VoidCallback onPressedBook;
  const BookNowButton({super.key, required this.onPressedBook});

  @override
  Widget build(BuildContext context) {
    return FilledButton(onPressed: onPressedBook,
        child: Text('Book Now'));
  }
}
