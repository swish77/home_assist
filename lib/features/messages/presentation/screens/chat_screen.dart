import 'dart:math';

import 'package:flutter/material.dart';
import 'package:home_assist/core/constants/chat_messages.dart';
import 'package:home_assist/features/messages/domain/entities/chat_message.dart';
import 'package:home_assist/features/messages/domain/entities/message.dart';
import 'package:home_assist/features/messages/presentation/widgets/chat_bubble.dart';
import 'package:home_assist/features/messages/presentation/widgets/chat_msg_input_bar.dart';

class ChatScreen extends StatefulWidget {
  final Message? message;
  final String? providerName;
  const ChatScreen({super.key, this.message, this.providerName});

  @override
  State<ChatScreen> createState() => _ChatScreenState();
}

class _ChatScreenState extends State<ChatScreen> {

  final TextEditingController messageController = TextEditingController();

  late List<ChatMessage> chatMessagesList;

  final ScrollController scrollController = ScrollController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    chatMessagesList = List.from(chatMessages);
  }

  void sendMessage(){
    final message = messageController.text.trim();
    
    if(message.isEmpty){
      return;
    }
    
    setState(() {
      chatMessagesList.add(
        ChatMessage(id: 'CM${chatMessagesList.length+1}', text: message, sentAt: DateTime.now(), isMe: true)
      );

    });
    scrollToBottom();

    messageController.clear();
    final replies = [
      "Thanks! I\'ll be there on time.",
      "I've noted your request.",
      "See you at the scheduled time.",
      "Please keep your phone reachable.",
      "I'll contact you if there's any delay.",
    ];

    final randomReply =
    replies[Random().nextInt(replies.length)];

    Future.delayed(Duration(milliseconds: 3000), (){

      setState(() {
        chatMessagesList.add(
          ChatMessage(id: 'CM${chatMessagesList.length+1}', text: randomReply, sentAt: DateTime.now(), isMe: false)
        );
      });

      scrollToBottom();

    });

  }

  void scrollToBottom(){
    WidgetsBinding.instance.addPostFrameCallback((_){
      scrollController.animateTo(scrollController.position.maxScrollExtent,
          duration: Duration(milliseconds: 300),
          curve: Curves.easeInOut);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            CircleAvatar(child: Icon(Icons.person)),
            SizedBox(width: 10,),
            Column(
              children: [
                Text(widget.message!=null ? widget.message!.senderName : widget.providerName!, style: Theme.of(context).textTheme.titleLarge),
                // Text(widget.message!.senderSpecialty, style: Theme.of(context).textTheme.titleLarge),
              ],
            ),
          ],
        ),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary
      ),
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  controller: scrollController,
                  padding: const EdgeInsets.all(16),
                  itemCount: chatMessagesList.length,
                  itemBuilder: (context, index){
                    return ChatBubble(
                        message: chatMessagesList[index]
                    );
                  }),
            ),

            ChatMsgInputBar(messageController: messageController, onPressedSend: sendMessage,)
          ],
        ),
      ),
    );
  }
}
