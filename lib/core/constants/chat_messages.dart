import 'package:home_assist/features/messages/domain/entities/chat_message.dart';

final chatMessages = [
  ChatMessage(
    text: 'Hi, I received your booking.',
    isMe: false,
  ),
  ChatMessage(
    text: 'Hello!',
    isMe: true,
  ),
  ChatMessage(
    text: 'Can I arrive by 10 AM?',
    isMe: false,
  ),
  ChatMessage(
    text: 'Yes, that works.',
    isMe: true,
  ),
];