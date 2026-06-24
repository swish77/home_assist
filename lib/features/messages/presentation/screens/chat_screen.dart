import 'package:flutter/material.dart';
import 'package:home_assist/features/messages/domain/entities/message.dart';

class ChatScreen extends StatelessWidget {
  final Message? message;
  final String? providerName;
  const ChatScreen({super.key, this.message, this.providerName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(child: Icon(Icons.person)),
            SizedBox(width: 10,),
            Text(message!=null ? message!.senderName : providerName!, style: Theme.of(context).textTheme.titleLarge),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary
      ),
      body: Center(
        child: Text('Coming Soon'),
      ),
    );
  }
}
