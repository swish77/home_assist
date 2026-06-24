import 'package:flutter/material.dart';
import 'package:home_assist/features/bookings/presentation/screens/bookings_screen.dart';
import 'package:home_assist/features/home/presentation/screens/home_screen.dart';
import 'package:home_assist/features/messages/presentation/screens/messages_screen.dart';
import 'package:home_assist/features/profile/presentation/screens/profile_screen.dart';

class MainNavigationScreen extends StatefulWidget {
  const MainNavigationScreen({super.key});

  @override
  State<MainNavigationScreen> createState() => _MainNavigationScreenState();
}

class _MainNavigationScreenState extends State<MainNavigationScreen> {

  int selectedIndex = 0;
  final screens = [
    const HomeScreen(),
    const BookingsScreen(),
    const MessagesScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    return PopScope(
      canPop: selectedIndex == 0,
      onPopInvokedWithResult: (didPop, result) {
        if (!didPop && selectedIndex != 0) {
          setState(() {
            selectedIndex = 0;
          });
        }
      },
      child: Scaffold(
        body: screens[selectedIndex],
        bottomNavigationBar: NavigationBar(
          selectedIndex: selectedIndex,
          onDestinationSelected: (index){
            setState(() {
              selectedIndex = index;
            });
          },
          destinations: const[
            NavigationDestination(icon: Icon(Icons.home_outlined),
                selectedIcon: Icon(Icons.home),
                label: 'Home'),
            NavigationDestination(icon: Icon(Icons.bookmark_border),
                selectedIcon: Icon(Icons.bookmark),
                label: 'Bookings'),
            NavigationDestination(icon: Icon(Icons.chat_bubble_outline),
                selectedIcon: Icon(Icons.chat_bubble),
                label: 'Messages'),
            NavigationDestination(icon: Icon(Icons.person_outline),
                selectedIcon: Icon(Icons.person),
                label: 'Profile'),
          ]
        ),
      ),
    );
  }
}
