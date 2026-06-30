import 'package:home_assist/features/messages/domain/entities/chat_message.dart';

final chatMessages = [
  ChatMessage(
    id: 'CM1',
    text: 'Hello! I received your booking.',
    sentAt: DateTime.now().subtract(const Duration(minutes: 15)),
    isMe: false,
  ),
  ChatMessage(
    id: 'CM2',
    text: 'Hi Ravi!',
    sentAt: DateTime.now().subtract(const Duration(minutes: 13)),
    isMe: true,
  ),
  ChatMessage(
    id: 'CM3',
    text: 'I can reach your location around 10:00 AM.',
    sentAt: DateTime.now().subtract(const Duration(minutes: 11)),
    isMe: false,
  ),
  ChatMessage(
    id: 'CM4',
    text: 'Perfect. See you then.',
    sentAt: DateTime.now().subtract(const Duration(minutes: 10)),
    isMe: true,
  ),
  ChatMessage(
    id: 'CM5',
    text: 'Please keep the main switch accessible.',
    sentAt: DateTime.now().subtract(const Duration(minutes: 8)),
    isMe: false,
  ),
];