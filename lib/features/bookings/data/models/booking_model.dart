import 'package:flutter/material.dart';
import 'package:home_assist/features/bookings/domain/entities/booking.dart';

class BookingModel extends Booking {
  const BookingModel({
    required super.id,
    required super.serviceId,
    required super.serviceName,
    required super.bookingDate,
    required super.bookingTime,
    required super.address,
    required super.status,
    required super.providerName,
    required super.amount,
    required super.notes,
  });

  factory BookingModel.fromJson(Map<String, dynamic> json) {
    final time = (json['bookingTime'] as String).split(':');

    return BookingModel(
      id: json['id'],
      serviceId: json['serviceId'],
      serviceName: json['serviceName'],
      bookingDate: DateTime.parse(json['bookingDate']),
      bookingTime: TimeOfDay(
        hour: int.parse(time[0]),
        minute: int.parse(time[1]),
      ),
      address: json['address'],
      providerName: json['providerName'],
      amount: (json['amount'] as num).toDouble(),
      status: json['status'],
      notes: json['notes'] ?? '',
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'serviceId': serviceId,
      'serviceName': serviceName,
      'bookingDate': bookingDate.toIso8601String().split('T').first,
      'bookingTime':
      '${bookingTime.hour.toString().padLeft(2, '0')}:${bookingTime.minute.toString().padLeft(2, '0')}',
      'address': address,
      'providerName': providerName,
      'amount': amount,
      'status': status,
      'notes': notes,
    };
  }
}