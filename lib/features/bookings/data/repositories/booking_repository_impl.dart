import 'package:flutter/material.dart';
import 'package:home_assist/features/bookings/data/datasource/booking_remote_data_source.dart';
import 'package:home_assist/features/bookings/domain/entities/booking.dart';
import 'package:home_assist/features/bookings/domain/repositories/booking_repository.dart';

class BookingRepositoryImpl implements BookingRepository{

  final BookingRemoteDataSource remoteDataSource;

  BookingRepositoryImpl({required this.remoteDataSource});

  @override
  Future<Booking> createBooking( booking) {
    return remoteDataSource.createBooking(booking);
  }

  @override
  Future<List<Booking>> getBookings() {
    return remoteDataSource.getBookings();
  }

  @override
  Future<void> cancelBooking(String bookingId) {
    return remoteDataSource.cancelBookings(bookingId);
  }

  @override
  Future<void> rescheduleBooking({required String bookingId, required DateTime bookingDate, required TimeOfDay bookingTime}) {
    return remoteDataSource.rescheduleBooking(bookingId: bookingId, bookingDate: bookingDate, bookingTime: bookingTime);
  }
  
}