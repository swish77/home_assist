import 'package:home_assist/features/bookings/domain/entities/booking.dart';

abstract class BookingRepository {
  Future<Booking> createBooking(Booking booking);

  Future<List<Booking>> getBookings();
}