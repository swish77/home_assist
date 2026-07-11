import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/app_spacing.dart';
import 'package:home_assist/features/bookings/presentation/screens/booking_screen.dart';
import 'package:home_assist/features/providers/presentation/widgets/book_now_button.dart';
import 'package:home_assist/features/services/domain/entities/service.dart';
import 'package:home_assist/features/services/domain/entities/service_category.dart';
import 'package:home_assist/features/services/presentation/widgets/service_card.dart';
import 'package:home_assist/shared/widgets/icon_text.dart';
import 'package:home_assist/shared/widgets/section_header.dart';

class ServiceCardsSection extends StatelessWidget {
  final List<Service> services;
  final String searchQuery;
  final ServiceCategory category;
  const ServiceCardsSection({super.key, required this.category, required this.searchQuery, required this.services});

  @override
  Widget build(BuildContext context) {


    final filteredServices = services.where((service) {
      final matchesCategory = service.category.id == category.id;

      final matchesSearchQuery = searchQuery == '' ||
      service.name.toLowerCase().contains(searchQuery.toLowerCase());

      return matchesCategory && matchesSearchQuery;

    }).toList();


    return filteredServices.isEmpty ?  Text('No Services Found'):
      Expanded(
      child: ListView.builder(
        itemCount: filteredServices.length,
        shrinkWrap: true,
        itemBuilder: (context, index){
            return ServiceCard(service: filteredServices[index],
              onServiceTap: () => showServiceDetails(context,
                  filteredServices[index]),);
        }),
      );

  }

  void showServiceDetails(BuildContext context, Service service){

    final theme  = Theme.of(context);
    final iconTxtStyle = theme.textTheme.bodyLarge;


    showModalBottomSheet(context: context,
        isScrollControlled: true,
        builder: (context){

            return DraggableScrollableSheet(
                expand: false,
                initialChildSize: 0.5,
                minChildSize: 0.5,
                maxChildSize: 0.7,
                builder: (context, scrollController){
                      return Padding(
                padding: EdgeInsets.only(
                  bottom: MediaQuery.of(context).viewInsets.bottom,
                ),
                child: SingleChildScrollView(
                  controller: scrollController,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      // Spacer(),
                      // SizedBox(height: 10,),
                      Container(
                        // padding: EdgeInsets.symmetric(vertical: 10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: theme.colorScheme.inversePrimary,
                        ),
                        width: double.infinity,
                        child: Column(
                          children: [
                            Center(
                              child: Container(
                                margin: const EdgeInsets.only(top: 12),
                                width: 40,
                                height: 4,
                                decoration: BoxDecoration(
                                  color: Colors.grey.shade600,
                                  borderRadius: BorderRadius.circular(20),
                                ),
                              ),
                            ),
                            SizedBox(height: 20,),
                            Icon(service.category.icon, size: 70,),
                            Text(service.name, style: theme.textTheme.titleLarge,),
                            SizedBox(height: 20,),
                          ],
                        ),
                      ),
                      // Center(
                      //   child: CircleAvatar(
                      //     radius: AppSpacing.xl,
                      //     child: Icon(service.category.icon),),
                      // ),
                      // SizedBox(height: 20,),
                      // Spacer(),
                      // Text(service.name, style: Theme.of(context).textTheme.titleLarge,),
                      SizedBox(height: 30,),

                      Container(
                        padding: EdgeInsets.symmetric(horizontal: 20),
                        width: MediaQuery.of(context).size.width,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                IconText(text: "${service.rating}", icon: Icons.star,
                                     textStyle: iconTxtStyle,),
                                IconText(text: service.duration, icon: Icons.timer, textStyle: iconTxtStyle,),
                                IconText(text: "Starting at ₹${service.startingPrice}",
                                      icon: Icons.account_balance_wallet, textStyle: iconTxtStyle,),
                              ],
                            ),

                            Spacer(),
                            Expanded(
                                child: BookNowButton(onPressedBook: () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context)=> BookingScreen(service: service)));
                                },),
                              ),
                          ],
                        ),
                      ),


                      SizedBox(height: AppSpacing.xl,),

                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SectionHeader(sectionName: 'Description',),

                            Text(service.description,
                              // service.description,
                              style: theme.textTheme.bodyLarge,),
                          ],
                        ),
                      ),

                      // SizedBox(height: 50,),
                      // Padding(
                      //   padding: const EdgeInsets.only(bottom: 100.0),
                      //   child: BookNowButton(),
                      // ),
                      // SizedBox(height: 150,),
                      // Spacer()
                    ],
                  ),
                ),
              );
            });


    });
  }
}
