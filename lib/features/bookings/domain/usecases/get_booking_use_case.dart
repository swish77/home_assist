import 'package:home_assist/features/bookings/domain/entities/booking.dart';
import 'package:home_assist/features/bookings/domain/repositories/booking_repository.dart';

class GetBookingUseCase {
  final BookingRepository bookingRepository;

  GetBookingUseCase({required this.bookingRepository});

  Future<List<Booking>> call(){
    return bookingRepository.getBookings();
  }
}