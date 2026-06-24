import 'package:home_assist/features/messages/domain/entities/message.dart';

final messages = [
  Message(
    id: 'M1',
    senderName: 'Ravi Kumar',
    avatar: '',
    bookingId: 'BK1001',
    senderType: SenderType.provider,
    lastMessage: 'I will arrive in about 30 minutes.',
    timestamp: DateTime.now().subtract(
      const Duration(minutes: 5),
    ),
    isUnread: true,
  ),

  Message(
    id: 'M2',
    senderName: 'Arjun Patel',
    avatar: '',
    bookingId: 'BK1002',
    senderType: SenderType.provider,
    lastMessage: 'Your plumbing service has been confirmed.',
    timestamp: DateTime.now().subtract(
      const Duration(hours: 1),
    ),
    isUnread: true,
  ),

  Message(
    id: 'M3',
    senderName: 'Vikram Singh',
    avatar: '',
    bookingId: 'BK1003',
    senderType: SenderType.provider,
    lastMessage: 'The AC repair is completed successfully.',
    timestamp: DateTime.now().subtract(
      const Duration(hours: 5),
    ),
    isUnread: false,
  ),

  Message(
    id: 'M4',
    senderName: 'Rahul Sharma',
    avatar: '',
    bookingId: 'BK1004',
    senderType: SenderType.provider,
    lastMessage: 'Can I visit tomorrow morning instead?',
    timestamp: DateTime.now().subtract(
      const Duration(days: 1),
    ),
    isUnread: false,
  ),

  Message(
    id: 'M5',
    senderName: 'HomeAssist Support',
    avatar: '',
    bookingId: '',
    senderType: SenderType.support,
    lastMessage:
    'How was your recent service experience?',
    timestamp: DateTime.now().subtract(
      const Duration(days: 2),
    ),
    isUnread: false,
  ),
];