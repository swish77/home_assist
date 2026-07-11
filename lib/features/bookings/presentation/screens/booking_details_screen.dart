import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_assist/core/constants/app_spacing.dart';
import 'package:home_assist/features/bookings/domain/entities/booking.dart';
import 'package:home_assist/features/bookings/presentation/notifiers/bookings_list_notifier.dart';
import 'package:home_assist/features/bookings/presentation/widgets/booking_info_tile.dart';
import 'package:home_assist/features/bookings/presentation/widgets/confirmation_dialog.dart';
import 'package:home_assist/features/messages/presentation/screens/chat_screen.dart';
import 'package:intl/intl.dart';

class BookingDetailsScreen extends ConsumerStatefulWidget {
  final Booking booking;
  const BookingDetailsScreen({super.key, required this.booking});

  @override
  ConsumerState<BookingDetailsScreen> createState() => _BookingDetailsScreenState();
}

class _BookingDetailsScreenState extends ConsumerState<BookingDetailsScreen> {
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
                Text(widget.booking.serviceName, style: textTheme.titleMedium,),
                SizedBox(height: 10,),

                BookingInfoTile(icon: Icons.bookmark, title: 'Booking ID', value: widget.booking.id),

                BookingInfoTile(icon: Icons.calendar_month, title: 'Date & Time', value: "${widget.booking.formattedDate} • ${widget.booking.formattedTime}"),
                BookingInfoTile(icon: Icons.location_on, title: 'Address', value: widget.booking.address),

                SizedBox(height: 10,),

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Provider', style: textTheme.titleSmall,),
                    Text(widget.booking.providerName, style: textTheme.bodyMedium,),

                    const SizedBox(height: 20,),

                    Text('Notes', style: textTheme.titleSmall,),
                    widget.booking.notes.isEmpty ? Text('No additional notes provided') :
                              Text(widget.booking.notes, style: textTheme.bodyMedium, softWrap: true,),

                    SizedBox(height: 20,),

                    Text('Amount', style: textTheme.titleSmall,),
                    widget.booking.amount == 0 ? Text('No amount was paid') :
                              Text(widget.booking.amount.toString(), style: textTheme.bodyMedium, softWrap: true,)
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
                  label: Text(widget.booking.status),
                  backgroundColor: getStatusColor(context)
                      .withValues(alpha: 0.12),
                ),



                SizedBox(height: 20,),
                // if (widget.booking.status != 'Completed')
                  FilledButton(onPressed: (){
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => ChatScreen(
                          providerName: widget.booking.providerName, message: null,
                        ),
                      ),
                    );
                  }, child: Text('Message Provider')),

                SizedBox(height: 10,),

                if (widget.booking.status == 'Completed' ||
                    widget.booking.status == 'Cancelled')
                  FilledButton(onPressed: (){}, child: Text('Book Again')),

                SizedBox(height: 10,),

                if (widget.booking.status == 'Upcoming'||
                    widget.booking.status == 'Confirmed')
                  FilledButton(onPressed: rescheduleBooking,
                      child: Text('Reschedule Booking')),

                SizedBox(height: 10,),

                if (widget.booking.status == 'Upcoming' ||
                    widget.booking.status == 'Confirmed')
                  FilledButton(
                    onPressed: () async {
                      final confirmation = await showConfirmationDialog(
                        context: context,
                        title: 'Cancel Booking?',
                        message: 'Are you sure you want to cancel this booking?',
                      );

                      if(confirmation == true){

                        await ref.read(bookingsListProvider.notifier)
                            .cancelBooking(widget.booking.id);

                        if(!context.mounted) return;

                          Navigator.pop(context);

                          ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(content: Text('Booking cancelled successfully')
                              ));
                      }
                    },
                    child: Text('Cancel Booking')),


                    SizedBox(height: 10,),
              ],
            ),
          )
      ),
    );
  }

  Future<void> rescheduleBooking() async {

    final selectedDate = await showDatePicker(context: context,
        firstDate: widget.booking.bookingDate,
        lastDate: DateTime.now().add(const Duration(days: 365)));

    if(selectedDate == null) return;

    if(!mounted) return;
      final selectedTime = await showTimePicker(context: context,
          initialTime: widget.booking.bookingTime);

      if(selectedTime == null) return;

    if(!mounted) return;
      final confirmed = await showConfirmationDialog(
        context: context,
        title: 'Reschedule Booking?',
        message:
        'Are you sure you want to reschedule this booking to '
            '${DateFormat('dd MMM yyyy').format(selectedDate)} '
            'at ${selectedTime.format(context)}?',
      );

      if(confirmed != true) return;

      if(confirmed == true){

        await ref.read(bookingsListProvider.notifier)
            .rescheduleBooking(widget.booking.id, selectedDate,
            selectedTime);

        if(!mounted) return;

        Navigator.pop(context);

        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('Booking rescheduled successfully')
            ));
      }


  }

  Color getStatusColor(BuildContext context) {
    switch (widget.booking.status) {
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
