import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:home_assist/features/ai_assistant/presentation/notifiers/ai_assist_notifier.dart';
import 'package:home_assist/features/ai_assistant/presentation/state/ai_assist_state.dart';
import 'package:home_assist/features/ai_assistant/presentation/widgets/result_section.dart';
import 'package:home_assist/features/services/domain/entities/service.dart';
import 'package:home_assist/features/services/presentation/providers/services_provider.dart';
import 'package:home_assist/shared/widgets/section_header.dart';

class AiAssistScreen extends ConsumerStatefulWidget {
  const AiAssistScreen({super.key});

  @override
  ConsumerState<AiAssistScreen> createState() => _AiAssistScreenState();
}

class _AiAssistScreenState extends ConsumerState<AiAssistScreen> {

  final TextEditingController prbmController = TextEditingController();

  List<Service> recommendedServices = [];


  @override
  void dispose() {
    // TODO: implement dispose
    prbmController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    final AiAssistState aiAssistState = ref.watch(aiAssistProvider);

    final allServicesAsync = ref.watch(allServicesProvider);

    final recommendedServices = allServicesAsync.maybeWhen(
        data: (allServices){
          if(aiAssistState.recommendation == null){
            return <Service>[];
          }

          return allServices.where(
                  (service)=> aiAssistState.recommendation!.
                  recommendedServiceIds.contains(service.id)).toList();
        },
        orElse: (){
          return <Service>[];
        }
    );

    // final recommendedServices =
    // aiAssistState.recommendation == null
    //     ? <Service>[]
    //     : services.where(
    //       (service) => aiAssistState.recommendation!
    //       .recommendedServiceIds
    //       .contains(service.id),
    // ).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('App Assist', style: Theme.of(context).textTheme.titleLarge, textAlign: TextAlign.center,),
    backgroundColor: Theme.of(context).colorScheme.inversePrimary),
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  // mainAxisSize: MainAxisSize.min,
                  children: [
                    SectionHeader(sectionName: 'Describe your issue'),

                    SizedBox(height: 20,),

                    buildIssueField(),

                    SizedBox(height: 20,),

                    buildAskAiBtn(context),

                    SizedBox(height: 20,),

                    if (aiAssistState.isLoading)
                      buildLoadingSection()
                    else if (aiAssistState.error != null)
                      buildErrorSection(aiAssistState)
                    else if (aiAssistState.recommendation != null)
                      ResultSection(
                          recommendedServices: recommendedServices,
                          aiAssistState: aiAssistState,
                        )
                    else
                      SizedBox.shrink()

                    // aiAssistState.isLoading == false ?
                    //     SizedBox.shrink()
                    // : aiAssistState.isLoading == true ?
                    //     buildLoadingSection()
                    // : aiAssistState.error != null ?
                    //     buildErrorSection(aiAssistState)
                    // : ResultSection(recommendedServices: recommendedServices,
                    //     aiAssistState: aiAssistState),
                    // Text('AI Recommendation\nPipe Leak Repair\n\nReason\nA leaking sink is commonly caused by...')
                  ],
                ),
            ),
          )
      ),
    );
  }

  Center buildErrorSection(AiAssistState aiAssistState) => Center(child: Text(aiAssistState.error!.toString()));

  Center buildLoadingSection() {
    return Center(
                    child: Column(
                      children: [
                        Text('Analyzing your issue'),
                        SizedBox(height: 10,),
                        CircularProgressIndicator(),
                      ],
                    ));
  }

  TextField buildIssueField() {
    return TextField(
                  controller: prbmController,
                  maxLines: 3,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20)
                    )
                  ),
                );
  }

  Padding buildAskAiBtn(BuildContext context) {

    return Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.of(context).size.width*0.25),
                  child: FilledButton.icon(
                      onPressed: () async {
                        FocusScope.of(context).unfocus();

                        await ref.read(aiAssistProvider.notifier).getAiReply(prbmController.text);


                        // print("reply: ${aiAssistState.recommendation}");
                      },
                      label: Text('Ask AI'),
                      icon: Icon(Icons.chat_bubble_outline)
                  ),
                );
  }
}


