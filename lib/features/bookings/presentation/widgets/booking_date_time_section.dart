import 'package:flutter/material.dart';
import 'package:home_assist/features/bookings/presentation/widgets/booking_selector_card.dart';
import 'package:intl/intl.dart';

class BookingDateTimeSection extends StatelessWidget {
  final VoidCallback pickDate;
  final VoidCallback pickTime;
  final DateTime? selectedDate;
  final TimeOfDay? selectedTime;
  final bool dateError;
  final bool timeError;

  const BookingDateTimeSection({super.key, required this.pickDate, required this.pickTime, required this.selectedDate, required this.selectedTime, required this.dateError, required this.timeError});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Expanded(
          child: BookingSelectorCard(
              onTapSchedule: pickDate,
              title: 'Date',
              value: selectedDate == null
                  ? 'Select Date'
                  : DateFormat('dd MMM yyyy').format(selectedDate!)
              , icon: Icons.calendar_month, hasError: dateError,),
        ),

        SizedBox(width: 20,),

        Expanded(
            child: BookingSelectorCard(onTapSchedule: pickTime,
                title: 'Time',
                value: selectedTime == null
                    ? 'Select Time'
                    : selectedTime!.format(context),
                icon: Icons.access_time, hasError: timeError,)
        )
      ],
    );
  }
}
