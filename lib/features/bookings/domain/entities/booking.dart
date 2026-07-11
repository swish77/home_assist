import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Booking {
  final String id;
  final String serviceId;
  final String serviceName;
  final DateTime bookingDate;
  final TimeOfDay bookingTime;
  final String providerName;
  final double amount;
  final String address;
  final String status;
  final String notes;

  const Booking({
    required this.id,
    required this.serviceId,
    required this.serviceName,
    required this.bookingDate,
    required this.address,
    required this.status, required this.bookingTime, required this.providerName, required this.amount,
    this.notes='',
  });

  String get formattedDate =>
      DateFormat('dd MMM, yyyy').format(bookingDate);

  String get formattedTime {
    final dateTime = DateTime(
      2025,
      1,
      1,
      bookingTime.hour,
      bookingTime.minute,
    );

    return DateFormat('hh:mm a').format(dateTime);
  }

}

