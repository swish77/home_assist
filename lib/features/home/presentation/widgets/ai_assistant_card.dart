import 'package:flutter/material.dart';
import 'package:home_assist/features/ai_assistant/presentation/screens/ai_assist_screen.dart';

class AiAssistantCard extends StatelessWidget {
  const AiAssistantCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 5),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Need help finding your service?', style: textTheme.bodyMedium,),
                  SizedBox(height: 10,),
                  GestureDetector(
                    onTap: ()=> Navigator.push(context,
                        MaterialPageRoute(builder: (context){{
                          return AiAssistScreen();
                        }
                        })),
                    child: Text('Describe the issue ->', style: textTheme.labelLarge!.copyWith(
                      color: colorScheme.onPrimaryFixed, decoration: TextDecoration.underline,
                    ),),
                  )
                ],
              ),
            ),

            Flexible(
              child: Image.asset('assets/images/png/ai_robot.png', fit: BoxFit.fill
                , width: 200, height: 100,),
            )
          ],
        ),
      ),
    );
  }
}
