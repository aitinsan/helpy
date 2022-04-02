import 'package:helpy/src/ui/chat/models/message_model.dart';
import 'package:helpy/src/ui/chat/widgets/RecentChats.dart';
import 'package:helpy/src/ui/chat/widgets/favorite_contacts.dart';
import 'package:flutter/material.dart';
import 'package:helpy/src/ui/common/app_colors.dart';

import '../widgets/category_selector.dart';

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.pink,
      body: SafeArea(
        child: Column(children: [
          CategorySelector(),
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                  color: Color(0xFFFEF8E8),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              child: Padding(
                padding: const EdgeInsets.only(top: 10.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    FavoriteContacts(),
                    FavoriteContacts_Users(),
                    RecentChats(),
                  ],
                ),
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
