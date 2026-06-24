import 'package:flutter/material.dart';
import 'package:home_assist/features/bookings/domain/entities/booking.dart';


class BookingSummaryCard extends StatelessWidget {
  final Booking booking;
  const BookingSummaryCard({super.key, required this.booking});

  Widget buildInfoRow(String title, String value, BuildContext context){
    return Column(
      children: [
        Text(title, style: Theme.of(context).textTheme.titleMedium,),
        // SizedBox(height: 5,),
        Text(value, style: Theme.of(context).textTheme.bodyMedium,),
        SizedBox(height: 20,),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 40),
        child: Column(
          children: [
            buildInfoRow(
              'Service',
                booking.serviceName,
              context
            ),

            buildInfoRow(
              'Date',
              booking.formattedDate,
              context
            ),

            buildInfoRow(
              'Time',
              booking.bookingTime.format(context),
              context
            ),

            buildInfoRow(
              'Booking ID',
              booking.id,
              context
            ),
          ],
        ),
      ),
    );
  }
}
