import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/app_spacing.dart';
import 'package:home_assist/core/constants/bookings.dart';
import 'package:home_assist/features/bookings/domain/entities/booking.dart';
import 'package:home_assist/features/bookings/presentation/widgets/booking_item_card.dart';

class BookingsScreen extends StatefulWidget {
  const BookingsScreen({super.key});

  @override
  State<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends State<BookingsScreen> {

  List<Booking> activeBookings = [];
  List<Booking> historyBookings = [];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getBookings();
  }

  void getBookings(){
    activeBookings = bookings
        .where((booking) =>
    booking.status == 'Upcoming' ||
        booking.status == 'Confirmed')
        .toList();

    historyBookings = bookings
        .where((booking) =>
    booking.status == 'Completed')
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Center(child: Text('My Bookings',
        style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,)),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
            child:
            activeBookings.isEmpty && historyBookings.isEmpty
            ?
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.calendar_month),
                      SizedBox(height: 10,),
                      Text('No upcoming bookings yet', style: Theme.of(context).textTheme.titleSmall,),
                      SizedBox(height: 5,),
                      Text('Book a service to get started.', style: Theme.of(context).textTheme.titleSmall,),
                    ],
                  ),
                )
            :
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // SizedBox(height: 10,),
                // SectionHeader(sectionName: 'Upcoming Bookings'),
                // SizedBox(height: 10,),

                Expanded(
                  child: DefaultTabController(
                    length: 2,
                    child: Column(
                        children: [
                          TabBar(
                              tabs: [
                                Tab(text: 'Upcoming',),
                                Tab(text: 'History',),
                              ]
                          ),

                          SizedBox(height: AppSpacing.md,),

                          Expanded(
                              child:  TabBarView(children: [
                                buildBookingsList(activeBookings),

                                buildBookingsList(historyBookings)
                              ])
                          )
                        ],
                      ),
                  ),
                ),


              ],
            ),
          )
      ),
    );
  }

  ListView buildBookingsList(List<Booking> bookings) {
    return ListView.builder(
                                itemCount: bookings.length,
                                itemBuilder: (context, index){
                                  return BookingItemCard(booking: bookings[index]);
                                },
                              );
  }
}
