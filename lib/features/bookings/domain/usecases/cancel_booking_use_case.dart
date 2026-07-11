import 'package:home_assist/features/bookings/domain/repositories/booking_repository.dart';

class CancelBookingUseCase {
  final BookingRepository bookingRepository;

  CancelBookingUseCase({required this.bookingRepository});

  Future<void> call(String bookingId){
    return bookingRepository.cancelBooking(bookingId);
  }
}