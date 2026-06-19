import 'package:flutter/material.dart';
import 'package:home_assist/features/home/presentation/widgets/active_booking_card.dart';
import 'package:home_assist/features/home/presentation/widgets/ai_assistant_card.dart';
import 'package:home_assist/features/home/presentation/widgets/categories_section.dart';
import 'package:home_assist/features/home/presentation/widgets/greeting_section.dart';
import 'package:home_assist/features/home/presentation/widgets/search_section.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GreetingSection(userName: 'Peter', userLocation: 'Manikonda, Hyderabad',),
                  SearchSection(),
                  ActiveBookingCard(serviceName: 'AC Repair', workerName: 'Ravi Kumar', status: 'On the way', eta: '15 mins', onPressed: (){}),
                  AiAssistantCard(),
                  CategoriesSection()
                ],
              ),
            ),
          )
      ),
    );
  }
}
