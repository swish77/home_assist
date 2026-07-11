import 'package:dio/dio.dart';
import 'package:home_assist/features/bookings/data/datasource/booking_remote_data_source.dart';
import 'package:home_assist/features/bookings/data/models/booking_model.dart';
import 'package:home_assist/features/bookings/domain/entities/booking.dart';

class BookingRemoteDataSourceImpl implements BookingRemoteDataSource{

  final Dio dio;

  BookingRemoteDataSourceImpl({required this.dio});

  @override
  Future<Booking> createBooking(Booking booking) async {

    try{
      final response = await dio.post('/booking',
        data: BookingModel(id: booking.id, serviceId: booking.serviceId,
            serviceName: booking.serviceName, bookingDate: booking.bookingDate,
            bookingTime: booking.bookingTime, address: booking.address,
            status: booking.status, providerName: booking.providerName,
            amount: booking.amount, notes: booking.notes).toJson()
      );

      return BookingModel.fromJson(response.data);
    }
    on DioException {
      throw Exception(
        'Unable to create booking. Please try again.',
      );
    }
  }

  @override
  Future<List<Booking>> getBookings() async {
    try{

      final response = await dio.get('/booking');

      final List data = response.data;


      return data.map((json)=> BookingModel.fromJson(json)).toList();


    }
    on DioException{
      throw Exception("Unable to load bookings.");
    }
  }

}