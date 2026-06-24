import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/app_spacing.dart';
import 'package:home_assist/features/profile/presentation/widgets/profile_header.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Profile')),
        backgroundColor: colorScheme.inversePrimary,),
      body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(AppSpacing.lg),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ProfileHeader(textTheme: textTheme),

                SizedBox(height: 20),

                getListTile('My Bookings', Icons.bookmark, textTheme.titleMedium!),
                getListTile('Saved Providers', Icons.star, textTheme.titleMedium!),
                getListTile('Notifications', Icons.notifications, textTheme.titleMedium!),
                getListTile('Settings', Icons.settings, textTheme.titleMedium!),
                getListTile('Logout', Icons.logout, textTheme.titleMedium!),
              ],
            ),
          )),
    );
  }

  Widget getListTile(String title, IconData icon, TextStyle textStyle){

    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppSpacing.xl, vertical: 10),
      child: Card(
        child: ListTile(
          title: Text(title, style: textStyle),
          leading: Icon(icon,),
        ),
      ),
    );
  }
}

