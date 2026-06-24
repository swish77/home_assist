import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/app_spacing.dart';
import 'package:home_assist/core/constants/messages.dart';
import 'package:home_assist/features/messages/presentation/screens/chat_screen.dart';
import 'package:home_assist/features/messages/presentation/widgets/message_card.dart';

class MessagesScreen extends StatelessWidget {
  const MessagesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return Scaffold(
      appBar: AppBar(title: Center(child: Text('Messages', style: textTheme.titleLarge)),
      backgroundColor: colorScheme.inversePrimary,),
      body: SafeArea(
          child: ListView.builder(
            padding: EdgeInsets.symmetric(vertical: AppSpacing.lg, horizontal: AppSpacing.lg),
            itemCount: messages.length,
              itemBuilder: (context, index){
            return MessageCard(message: messages[index],
              onTap: () {
                Navigator.push(context,
                  MaterialPageRoute(builder: (context)=>
                    ChatScreen(message: messages[index])));
                },);

          })
      ),
    );
  }
}
