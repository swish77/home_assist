import 'package:flutter/material.dart';
import 'package:home_assist/features/bookings/domain/entities/booking.dart';
import 'package:home_assist/features/bookings/presentation/screens/booking_details_screen.dart';
import 'package:home_assist/shared/widgets/icon_text.dart';

class BookingItemCard extends StatelessWidget {
  final Booking booking;
  const BookingItemCard({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (context)=>
            BookingDetailsScreen(booking: booking,)));
      },
      child: Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 10,),
            Text(booking.serviceName, style: Theme.of(context).textTheme.titleMedium,),
            SizedBox(height: 3,),
            IconText(text: 'Booking ID: ${booking.id}', textStyle: Theme.of(context).textTheme.bodyMedium, icon: Icons.bookmark,),
            SizedBox(height: 3,),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconText(text: booking.formattedDate, textStyle: Theme.of(context).textTheme.bodyMedium, icon: Icons.calendar_month,),
                SizedBox(width: 10,),
                IconText(text: booking.formattedTime, textStyle: Theme.of(context).textTheme.bodyMedium, icon: Icons.timer,),
              ],
            ),

            SizedBox(height: 10,),
          ],
        ),
      ),
    );
  }
}
