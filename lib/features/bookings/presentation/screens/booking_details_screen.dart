import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/app_spacing.dart';
import 'package:home_assist/features/bookings/domain/entities/booking.dart';
import 'package:home_assist/features/bookings/presentation/widgets/booking_info_tile.dart';
import 'package:home_assist/features/messages/presentation/screens/chat_screen.dart';

class BookingDetailsScreen extends StatelessWidget {
  final Booking booking;
  const BookingDetailsScreen({super.key, required this.booking});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Text('Booking Details',),
        backgroundColor: colorScheme.inversePrimary,),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg, vertical: AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(booking.serviceName, style: textTheme.titleMedium,),
                SizedBox(height: 10,),

                BookingInfoTile(icon: Icons.bookmark, title: 'Booking ID', value: booking.id),

                BookingInfoTile(icon: Icons.calendar_month, title: 'Date & Time', value: "${booking.formattedDate} • ${booking.formattedTime}"),
                BookingInfoTile(icon: Icons.location_on, title: 'Address', value: booking.address),

                SizedBox(height: 10,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Provider', style: textTheme.titleSmall,),
                    Text(booking.providerName, style: textTheme.bodyMedium,)
                  ],
                ),

                SizedBox(height: 10,),

                // Chip(
                //   label: Text(booking.status),
                // ),

                Chip(
                  avatar: Icon(
                    Icons.circle,
                    size: 12,
                    color: getStatusColor(context),
                  ),
                  label: Text(booking.status),
                  backgroundColor:
                  getStatusColor(context).withValues(alpha: 0.12),
                ),



                SizedBox(height: 20,),
                if (booking.status != 'Completed')
                  FilledButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChatScreen(
                          providerName: booking.providerName, message: null,
                        ),
                      ),
                    );
                  }, child: Text('Message Provider')),
                SizedBox(height: 10,),
                if (booking.status == 'Completed')
                  FilledButton(onPressed: (){}, child: Text('Book Again')),
                SizedBox(height: 10,),
                if (booking.status == 'Upcoming' ||
                    booking.status == 'Confirmed')
                FilledButton(onPressed: (){}, child: Text('Cancel Booking')),
                SizedBox(height: 10,),
              ],
            ),
          )
      ),
    );
  }

  Color getStatusColor(BuildContext context) {
    switch (booking.status) {
      case 'Completed':
        return Colors.green;

      case 'Confirmed':
        return Colors.blue;

      case 'Upcoming':
        return Colors.orange;

      default:
        return Theme.of(context).colorScheme.primary;
    }
  }
}
