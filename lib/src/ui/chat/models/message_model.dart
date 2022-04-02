import 'package:helpy/src/ui/chat/models/user_model.dart';

class Message {
  final User sender;
  final String
      time; // Would usually be type DateTime or Firebase Timestamp in production apps
  final String text;
  final bool isLiked;
  final bool unread;

  Message({
    required this.sender,
    required this.time,
    required this.text,
    required this.isLiked,
    required this.unread,
  });
}

// YOU - current user
final User currentUser =
    User(id: 0, name: 'Current User', imageUrl: 'assets/images/avatar.jpg');

// USERS
final User prycholog =
    User(id: 1, name: 'Айгерим Психолог', imageUrl: 'assets/images/prysho.png');

final User bot =
    User(id: 2, name: 'Хэлпи бот', imageUrl: 'assets/images/bot.png');

final User group = User(
    id: 3,
    name: 'Жертвы домашнего...',
    imageUrl: 'assets/images/grouphelp.png');

// FAVORITE CONTACTS
List<User> favorites = [group, prycholog, bot];

// EXAMPLE CHATS ON HOME SCREEN
List<Message> chats = [
  Message(
    sender: group,
    time: '3:32 PM',
    text: 'У меня было так...',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: prycholog,
    time: '1:01 PM',
    text: 'Главное помните что для вас...',
    isLiked: false,
    unread: false,
  ),
  Message(
    sender: bot,
    time: '12:54 PM',
    text: 'Скоро свяжется психолог Айгерим:)',
    isLiked: false,
    unread: false,
  ),
];

// EXAMPLE MESSAGES IN CHAT SCREEN
List<Message> messages = [
  Message(
    sender: bot,
    time: '3:45 PM',
    text: 'Скоро свяжется психолог Айгерим:)',
    isLiked: false,
    unread: true,
  ),
  Message(
    sender: currentUser,
    time: '4:30 PM',
    text: 'Направь меня к психологу',
    isLiked: true,
    unread: false,
  ),
  Message(
    sender: bot,
    time: '5:30 PM',
    text: 'Привет, как ты сегодня?',
    isLiked: false,
    unread: false,
  ),
];
