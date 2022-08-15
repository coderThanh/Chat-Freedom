import 'package:equatable/equatable.dart';

enum ChatMessageType { text, audio, image, video }

enum ChatMessageStatus { notSent, notView, viewed }

class ChatMessage extends Equatable {
  final String text;
  final bool isSender;
  final ChatMessageType type;
  final ChatMessageStatus status;

  const ChatMessage({
    this.text = '',
    required this.isSender,
    required this.type,
    required this.status,
  });

  @override
  List<Object?> get props => [text, isSender, type, status];
}

List<ChatMessage> demeChatMessages = [
  const ChatMessage(
    text: "Hi Sajol,",
    type: ChatMessageType.text,
    status: ChatMessageStatus.viewed,
    isSender: false,
  ),
  const ChatMessage(
    text: "Hello, How are you?",
    type: ChatMessageType.text,
    status: ChatMessageStatus.viewed,
    isSender: true,
  ),
  const ChatMessage(
    text: "",
    type: ChatMessageType.audio,
    status: ChatMessageStatus.viewed,
    isSender: false,
  ),
  const ChatMessage(
    text: "",
    type: ChatMessageType.video,
    status: ChatMessageStatus.viewed,
    isSender: true,
  ),
  const ChatMessage(
    text: "Error happend",
    type: ChatMessageType.text,
    status: ChatMessageStatus.notSent,
    isSender: true,
  ),
  const ChatMessage(
    text: "This looks great man!!",
    type: ChatMessageType.text,
    status: ChatMessageStatus.viewed,
    isSender: false,
  ),
  const ChatMessage(
    text: "Glad you like it",
    type: ChatMessageType.text,
    status: ChatMessageStatus.notView,
    isSender: true,
  ),
];
