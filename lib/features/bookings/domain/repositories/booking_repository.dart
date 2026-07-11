import 'package:flutter/material.dart';
import 'package:home_assist/features/bookings/domain/entities/booking.dart';

abstract class BookingRepository {
  Future<Booking> createBooking(Booking booking);

  Future<List<Booking>> getBookings();

  Future<void> cancelBooking(String bookingId);

  Future<void> rescheduleBooking({required String bookingId, required DateTime bookingDate,
    required TimeOfDay bookingTime});
}