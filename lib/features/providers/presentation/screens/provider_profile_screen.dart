import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/app_spacing.dart';
import 'package:home_assist/features/providers/domain/entities/service_providers.dart';
import 'package:home_assist/features/providers/presentation/widgets/about_section.dart';
import 'package:home_assist/features/providers/presentation/widgets/book_now_button.dart';
import 'package:home_assist/features/providers/presentation/widgets/profile_header.dart';
import 'package:home_assist/features/providers/presentation/widgets/services_offered_section.dart';

class ProviderProfileScreen extends StatelessWidget {
  final ProviderModel provider;
  const ProviderProfileScreen({super.key, required this.provider});

  @override
  Widget build(BuildContext context) {

    final theme = Theme.of(context);

    return Scaffold(
      backgroundColor: theme.colorScheme.onInverseSurface,
      appBar: AppBar(title: Text('Provider Profile'),
      backgroundColor: theme.colorScheme.inversePrimary,),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(AppSpacing.lg),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  ProfileHeader(name: provider.name,
                      specialty: provider.specialty),

                  SizedBox(height: 20,),

                  AboutSection(about: provider.about),

                  SizedBox(height: 20,),

                  ServicesOfferedSection(servicesOffered: provider.servicesOffered,),

                  SizedBox(height: 20,),

                  BookNowButton(onPressedBook: () {
                    // Navigator.push(context,
                    //     MaterialPageRoute(builder: (context)=>
                    //         BookingScreen(service: service)));
                  },)
                ],
              ),
            ),
          )
      ),
    );
  }
}
