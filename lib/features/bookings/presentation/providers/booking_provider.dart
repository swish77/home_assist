import 'package:home_assist/core/network/mock_api_dio_provider.dart';
import 'package:home_assist/features/bookings/data/datasource/booking_remote_data_source.dart';
import 'package:home_assist/features/bookings/data/datasource/booking_remote_data_source_impl.dart';
import 'package:home_assist/features/bookings/data/repositories/booking_repository_impl.dart';
import 'package:home_assist/features/bookings/domain/repositories/booking_repository.dart';
import 'package:home_assist/features/bookings/domain/usecases/cancel_booking_use_case.dart';
import 'package:home_assist/features/bookings/domain/usecases/create_booking_use_case.dart';
import 'package:home_assist/features/bookings/domain/usecases/get_booking_use_case.dart';
import 'package:home_assist/features/bookings/domain/usecases/reschedule_booking_use_case.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'booking_provider.g.dart';

@riverpod
BookingRemoteDataSource bookingRemoteDataSource(Ref ref){
  return BookingRemoteDataSourceImpl(dio: ref.read(mockApiDioProvider));
}


@riverpod
BookingRepository bookingRepository(Ref ref){
  return BookingRepositoryImpl(remoteDataSource: ref.read(bookingRemoteDataSourceProvider));
}

@riverpod
CreateBookingUseCase createBookingUseCase(Ref ref){
  return CreateBookingUseCase(bookingRepository: ref.read(bookingRepositoryProvider));
}

@riverpod
GetBookingUseCase getBookingUseCase(Ref ref){
  return GetBookingUseCase(bookingRepository: ref.read(bookingRepositoryProvider));
}

@riverpod
CancelBookingUseCase cancelBookingUseCase(Ref ref){
  return CancelBookingUseCase(bookingRepository: ref.read(bookingRepositoryProvider));
}

@riverpod
RescheduleBookingUseCase rescheduleBookingUseCase(Ref ref){
  return RescheduleBookingUseCase(bookingRepository: ref.read(bookingRepositoryProvider));
}

