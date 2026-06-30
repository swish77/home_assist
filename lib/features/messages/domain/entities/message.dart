import 'package:intl/intl.dart';

enum SenderType {
  provider,
  support,
}

class Message {
  final String id;
  final String senderName;
  final String avatar;
  final String? bookingId;
  final SenderType senderType;
  final String lastMessage;
  final DateTime timestamp;
  final bool isUnread;

  const Message({
    required this.id,
    required this.senderName,
    required this.avatar,
    required this.bookingId,
    required this.senderType,
    required this.lastMessage,
    required this.timestamp,
    required this.isUnread,
  });

  String get formattedTime {
    final now = DateTime.now();

    if (timestamp.day == now.day &&
        timestamp.month == now.month &&
        timestamp.year == now.year) {

      return DateFormat('hh:mm a')
          .format(timestamp);

    }

    if (timestamp.year == now.year) {
      return DateFormat('dd MMM')
          .format(timestamp);
    }

    return DateFormat("dd MM yyyy").format(timestamp);
  }

}

