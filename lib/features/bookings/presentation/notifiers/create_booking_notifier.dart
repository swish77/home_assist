import 'package:home_assist/features/bookings/domain/entities/booking.dart';
import 'package:home_assist/features/bookings/presentation/providers/booking_provider.dart';
import 'package:home_assist/features/bookings/presentation/state/create_booking_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'create_booking_notifier.g.dart';

@riverpod
class CreateBookingNotifier extends _$CreateBookingNotifier{

  @override
  CreateBookingState build(){
    return const CreateBookingState();
  }


  Future<void> createBooking(Booking booking) async{

    state = state.copyWith(
      isLoading : true,
      error : null
    );

    try{

      final createdBooking = await ref.read(createBookingUseCaseProvider).call(booking);

      state = state.copyWith(
        isLoading : false,
        booking : createdBooking
      );
    }
    catch(e){
      state = state.copyWith(
        isLoading : false,
        error: e is Exception ? e : Exception(e.toString())
      );
    }

}

}