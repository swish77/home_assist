import 'package:home_assist/features/bookings/domain/entities/booking.dart';
import 'package:home_assist/features/bookings/domain/repositories/booking_repository.dart';

class CreateBookingUseCase {
  final BookingRepository bookingRepository;

  CreateBookingUseCase({required this.bookingRepository});

  Future<Booking> call(Booking booking){
    return bookingRepository.createBooking(booking);
  }
}