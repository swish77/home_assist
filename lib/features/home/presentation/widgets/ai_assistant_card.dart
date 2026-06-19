import 'package:flutter/material.dart';

class AiAssistantCard extends StatelessWidget {
  const AiAssistantCard({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    final colorScheme = theme.colorScheme;
    final textTheme = theme.textTheme;

    return Card(
      margin: const EdgeInsets.symmetric(vertical: 10),
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              children: [
                Text('Need help finding your service?', style: textTheme.bodyMedium,),
                Text('Describe the issue ->', style: textTheme.bodyMedium,)
              ],
            ),

            Image.asset('assets/images/png/ai_robot.png', fit: BoxFit.fill
              , width: 200, height: 100,)
          ],
        ),
      ),
    );
  }
}
