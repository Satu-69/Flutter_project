import 'package:flutter/material.dart';
import 'package:secure_app_final/models/chat_message.dart';

class ChatMessageBubble extends StatelessWidget {
  final ChatMessage message;
  final bool isSentByMe;

  const ChatMessageBubble({
    super.key,
    required this.message,
    required this.isSentByMe,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: isSentByMe ? Alignment.centerRight : Alignment.centerLeft,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 14.0),
        decoration: BoxDecoration(
          color: isSentByMe ? Theme.of(context).primaryColor.withAlpha(220) : Colors.grey[300],
          borderRadius: BorderRadius.only(
            topLeft: const Radius.circular(16.0),
            topRight: const Radius.circular(16.0),
            bottomLeft: isSentByMe ? const Radius.circular(16.0) : const Radius.circular(0),
            bottomRight: isSentByMe ? const Radius.circular(0) : const Radius.circular(16.0),
          ),
        ),
        child: SelectableText(
          message.text,
          style: TextStyle(
            color: isSentByMe ? Colors.white : Colors.black87,
            fontSize: 16,
          ),
          toolbarOptions: const ToolbarOptions(
            copy: false,
            selectAll: false,
            paste: false,
            cut: false,
          ),
        ),
      ),
    );
  }
}