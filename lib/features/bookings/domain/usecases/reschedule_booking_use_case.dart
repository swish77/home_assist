import 'package:flutter/material.dart';
import 'package:home_assist/features/bookings/domain/repositories/booking_repository.dart';

class RescheduleBookingUseCase {
  final BookingRepository bookingRepository;

  RescheduleBookingUseCase({required this.bookingRepository});

  Future<void> call({required String bookingId, required DateTime bookingDate, required TimeOfDay bookingTime}){
    return bookingRepository.rescheduleBooking(bookingId: bookingId, bookingDate: bookingDate, bookingTime: bookingTime);
  }

}