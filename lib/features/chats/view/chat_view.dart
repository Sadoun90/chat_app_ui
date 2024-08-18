import 'package:chat_app_ui/core/colors.dart';
import 'package:chat_app_ui/features/chats/widgets/Fav_chats.dart';
import 'package:chat_app_ui/features/chats/widgets/chat_list_widget.dart';
import 'package:flutter/material.dart';

class ChatView extends StatelessWidget {
  const ChatView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.primaryColor,
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        title: Text('Chats',
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontWeight: FontWeight.w600,
            )),
        actions: [
          IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.settings,
                color: Colors.white,
              ))
        ],
      ),
      body: Column(
        children: [
          FavouriteContactWidget(),
          SizedBox(height: 5),
          /////////chats
          chat_list_widget()
        ],
      ),
    );
  }
}

