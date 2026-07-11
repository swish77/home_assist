import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_assist/core/constants/app_spacing.dart';
import 'package:home_assist/features/home/presentation/widgets/active_booking_card.dart';
import 'package:home_assist/features/home/presentation/widgets/ai_assistant_card.dart';
import 'package:home_assist/features/home/presentation/widgets/categories_section.dart';
import 'package:home_assist/features/home/presentation/widgets/greeting_section.dart';
import 'package:home_assist/features/home/presentation/widgets/popular_services_section.dart';
import 'package:home_assist/features/home/presentation/widgets/search_section.dart';
import 'package:home_assist/features/home/presentation/widgets/top_providers_section.dart';
import 'package:home_assist/features/services/presentation/providers/services_provider.dart';

class HomeScreen extends ConsumerStatefulWidget {
  const HomeScreen({super.key});

  @override
  ConsumerState<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends ConsumerState<HomeScreen> {
  @override
  Widget build(BuildContext context) {

    final popularServicesAsync = ref.watch(popularServicesProvider);

    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.onInverseSurface,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  GreetingSection(userName: 'Peter', userLocation: 'Manikonda, Hyderabad',),
                  SearchSection(),

                  AiAssistantCard(),
                  ActiveBookingCard(serviceName: 'AC Repair', workerName: 'Ravi Kumar', status: 'On the way', eta: '15 mins', onPressed: (){}),
                  CategoriesSection(),
                  TopProvidersSection(),

                  popularServicesAsync.when(
                    data: (services) => PopularServicesSection(
                      services: services,
                    ),
                    loading: () => const Center(
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 20),
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    error: (error, stackTrace) => Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20),
                      child: Text(
                        error.toString(),
                        style: const TextStyle(color: Colors.red),
                      ),
                    ),
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }
}
