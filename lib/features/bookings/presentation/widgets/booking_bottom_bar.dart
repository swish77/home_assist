import 'package:flutter/material.dart';

class BookingBottomBar extends StatelessWidget {
  final VoidCallback onClickedConfirm;
  const BookingBottomBar({super.key, required this.onClickedConfirm});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: EdgeInsets.all(8),
            child: FilledButton(onPressed: onClickedConfirm,
                child: Text('Confirm Booking')
            ),
        )
    );
  }
}
