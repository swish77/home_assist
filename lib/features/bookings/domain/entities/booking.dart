import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class Booking {
  final String id;
  final String serviceId;
  final String serviceName;
  final DateTime bookingDate;
  final TimeOfDay bookingTime;
  final String address;
  final String status;

  Booking({
    required this.id,
    required this.serviceId,
    required this.serviceName,
    required this.bookingDate,
    required this.address,
    required this.status, required this.bookingTime,
  });

  String get formattedDate =>
      DateFormat('dd MMM yyyy').format(bookingDate);

}

