import 'package:home_assist/features/bookings/domain/entities/booking.dart';

class BookingsState {
  final bool isLoading;
  final List<Booking> bookings;
  final Exception? error;

  const BookingsState({
    this.isLoading = false,
    this.bookings = const [],
    this.error,
  });

  BookingsState copyWith({
    bool? isLoading,
    List<Booking>? bookings,
    Exception? error,
  }) {
    return BookingsState(
      isLoading: isLoading ?? this.isLoading,
      bookings: bookings ?? this.bookings,
      error: error,
    );
  }
}