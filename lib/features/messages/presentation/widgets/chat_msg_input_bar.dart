import 'package:flutter/material.dart';

class ChatMsgInputBar extends StatelessWidget {
  final VoidCallback onPressedSend;
  const ChatMsgInputBar({
    super.key,
    required this.messageController, required this.onPressedSend,
  });

  final TextEditingController messageController;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsGeometry.all(16),
      child: TextField(
        controller: messageController,
        onSubmitted: (_)=>onPressedSend(),
        decoration: InputDecoration(
          hintText: 'Type here...',
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20)
          ),
          suffixIcon: IconButton(
            icon: const Icon(Icons.send),
            onPressed: onPressedSend,
          ),
        ),
      ),
    );
  }
}