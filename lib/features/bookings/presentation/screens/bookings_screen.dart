import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_assist/core/constants/app_spacing.dart';
import 'package:home_assist/features/bookings/domain/entities/booking.dart';
import 'package:home_assist/features/bookings/presentation/notifiers/bookings_list_notifier.dart';
import 'package:home_assist/features/bookings/presentation/widgets/booking_item_card.dart';

class BookingsScreen extends ConsumerStatefulWidget {
  const BookingsScreen({super.key});

  @override
  ConsumerState<BookingsScreen> createState() => _BookingsScreenState();
}

class _BookingsScreenState extends ConsumerState<BookingsScreen> {

  // List<Booking> activeBookings = [];
  // List<Booking> historyBookings = [];


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // getBookings();

      Future.microtask((){
        ref.read(bookingsListProvider.notifier).getBookings();
      });
  }

  // void getBookings(){
  //   activeBookings = bookings
  //       .where((booking) =>
  //   booking.status == 'Upcoming' ||
  //       booking.status == 'Confirmed')
  //       .toList();
  //
  //   historyBookings = bookings
  //       .where((booking) =>
  //   booking.status == 'Completed')
  //       .toList();
  // }

  @override
  Widget build(BuildContext context) {

    final bookingsState = ref.watch(bookingsListProvider);

    final activeBookings = bookingsState.bookings.where(
            (booking) => booking.status == "Confirmed"
                || booking.status == "Upcoming")
        .toList();

    final historyBookings = bookingsState.bookings.where(
            (booking) =>  booking.status == "Completed"
    ).toList();


    // Loading State
    if (bookingsState.isLoading) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('My Bookings'),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: const Center(
          child: CircularProgressIndicator(),
        ),
      );
    }


    // Error State
    if (bookingsState.error != null) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('My Bookings'),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Text(bookingsState.error.toString()),
        ),
      );
    }

    // No Bookings State
    if (bookingsState.bookings.isEmpty) {
      return Scaffold(
        appBar: AppBar(
          title: const Text('My Bookings'),
          centerTitle: true,
          backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        ),
        body: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.calendar_month,
                size: 50,
              ),
              const SizedBox(height: 12),
              Text(
                'No bookings yet',
                style: Theme.of(context).textTheme.titleMedium,
              ),
              const SizedBox(height: 6),
              Text(
                'Book a service to get started.',
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      );
    }



    return Scaffold(
      appBar: AppBar(title: Center(child: Text('My Bookings',
        style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,)),
      backgroundColor: Theme.of(context).colorScheme.inversePrimary,),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppSpacing.lg),
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
            )
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
