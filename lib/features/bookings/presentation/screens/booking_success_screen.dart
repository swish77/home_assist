import 'package:flutter/material.dart';
import 'package:home_assist/features/bookings/domain/entities/booking.dart';
import 'package:home_assist/features/bookings/presentation/widgets/booking_summary_card.dart';

class BookingSuccessScreen extends StatelessWidget {
  final Booking booking;
  const BookingSuccessScreen({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CircleAvatar(
                  radius: 60,
                  backgroundColor: Theme.of(context).colorScheme.primaryContainer,
                  child: Icon(
                    Icons.check_circle,
                    size: 80,
                    color: Colors.green,
                  ),
                ),

                Text(
                  'Booking Confirmed',
                  style: Theme.of(context)
                      .textTheme
                      .headlineSmall,
                ),

                Text(
                  'Your booking request has been successfully submitted.',
                  textAlign: TextAlign.center,
                ),

                BookingSummaryCard(booking: booking),

                buildTrackBtn(),

                SizedBox(height: 20,),

                buildHomeBtn(context)

              ],
            ),
          )
      ),
    );
  }

  OutlinedButton buildHomeBtn(BuildContext context) {
    return OutlinedButton(
              onPressed: () {
                Navigator.popUntil(
                  context,
                      (route) => route.isFirst,
                );
              },
              child: const Text('Back To Home'),
            );
  }

  Widget buildTrackBtn() {
    return FilledButton.icon(
              onPressed: () {},
              icon: Icon(Icons.location_searching),
              label: Text('Track Booking'),
            );
  }
}
