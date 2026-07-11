import 'package:home_assist/features/bookings/domain/entities/booking.dart';

class CreateBookingState {
  final bool isLoading;
  final Booking? booking;
  final Exception? error;

  const CreateBookingState({
    this.isLoading =false,
    this.booking,
    this.error,
  });

  CreateBookingState copyWith({
    bool? isLoading,
    Booking? booking,
    Exception? error,
  }) {
    return CreateBookingState(
      isLoading: isLoading ?? this.isLoading,
      booking: booking ?? this.booking,
      error: error,
    );
  }
}