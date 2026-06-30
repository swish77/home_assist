class ChatMessage {
  final String id;
  final String text;
  final DateTime sentAt;
  final bool isMe;

  const ChatMessage({
    required this.id,
    required this.text,
    required this.sentAt,
    required this.isMe,
  });
}