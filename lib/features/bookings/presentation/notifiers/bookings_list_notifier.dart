import 'package:home_assist/features/bookings/presentation/providers/booking_provider.dart';
import 'package:home_assist/features/bookings/presentation/state/bookings_state.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'bookings_list_notifier.g.dart';

@riverpod
class BookingsListNotifier extends _$BookingsListNotifier{

  @override
  BookingsState build(){
    return const BookingsState();
  }


  Future<void> getBookings() async {
    state = state.copyWith(
      isLoading : true,
      error : null
    );

    try{
      final bookings = await ref.read(getBookingUseCaseProvider).call();

      state = state.copyWith(
        isLoading : false,
        bookings : bookings
      );
    }
    catch(e){
      state = state.copyWith(
        isLoading : false,
        error : e is Exception? e: Exception(e.toString())
      );
    }


  }


}