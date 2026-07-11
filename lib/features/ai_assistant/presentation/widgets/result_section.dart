import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/app_spacing.dart';
import 'package:home_assist/features/ai_assistant/presentation/state/ai_assist_state.dart';
import 'package:home_assist/features/home/presentation/widgets/service_card.dart';
import 'package:home_assist/features/services/domain/entities/service.dart';
import 'package:home_assist/shared/widgets/section_header.dart';



class ResultSection extends StatelessWidget {
  const ResultSection({
    super.key,
    required this.recommendedServices,
    required this.aiAssistState,
  });

  final List<Service> recommendedServices;
  final AiAssistState aiAssistState;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Text("Recommended Services :", style: Theme.of(context).textTheme.titleMedium,),

        SectionHeader(sectionName: 'Recommended Services :'),

        SizedBox(height: AppSpacing.md,),

        SizedBox(
          height: MediaQuery.of(context).size.height*0.32,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: recommendedServices.map((service) {
              return ServiceCard(service: service);
            }).toList(),
          ),
        ),
        // Wrap(
        //   spacing: 12,
        //   runSpacing: 12,
        //   children: recommendedServices
        //       .map((service) => SizedBox(
        //     width: 170,
        //     child: ServiceCard(service: service),
        //   ))
        //       .toList(),
        // ),


        SizedBox(height: AppSpacing.xl,),

        // Text("Explanation :", style: Theme.of(context).textTheme.titleMedium,),

        SectionHeader(sectionName: 'Explanation :'),
        SizedBox(height: AppSpacing.sm,),

        Text(aiAssistState.recommendation!.explanation),
      ],
    );
  }
}