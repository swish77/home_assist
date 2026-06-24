import 'package:flutter/material.dart';
import 'package:home_assist/features/messages/domain/entities/message.dart';

class MessageCard extends StatelessWidget {
  final Message message;
  final VoidCallback onTap;
  const MessageCard({super.key, required this.message, required this.onTap});

  @override
  Widget build(BuildContext context) {

    final textTheme = Theme.of(context).textTheme;
    final colorScheme = Theme.of(context).colorScheme;

    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 0.0),
        child: Card(
          child: ListTile(
            leading: Icon(Icons.person_pin_rounded),
            title: Text(message.senderName, style: textTheme.titleMedium,),
            subtitle: Text(message.lastMessage, style: textTheme.bodyMedium!.copyWith(
              overflow: TextOverflow.ellipsis,
            )),
            trailing: Text(message.formattedTime, style: textTheme.bodyMedium),
          )
        ),
      ),
    );
  }
}
