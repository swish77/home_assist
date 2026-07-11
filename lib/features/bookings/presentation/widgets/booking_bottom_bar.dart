import 'package:flutter/material.dart';

class BookingBottomBar extends StatelessWidget {
  final bool isLoading;
  final VoidCallback onClickedConfirm;
  const BookingBottomBar({super.key, required this.onClickedConfirm, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Padding(
            padding: EdgeInsets.only(left: 25, bottom: 30, right: 25),
            child: FilledButton(
                onPressed: isLoading ? null : onClickedConfirm,
                child: isLoading ? SizedBox(
                    width: 20, height: 20,
                    child: CircularProgressIndicator(strokeWidth: 2.5,)) :Text('Confirm Booking')
            ),
        )
    );
  }
}
