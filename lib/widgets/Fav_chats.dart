import 'package:chat_app_ui/core/models/user_model.dart';
import 'package:flutter/material.dart';

class FavouriteContactWidget extends StatelessWidget {
  const FavouriteContactWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 15, 0, 15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            //////////fav chats
            'Favourite Contacts',
            style: TextStyle(
                color: Colors.white, fontSize: 15, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 20),

          ///////fav listview
          SizedBox(
            height: 100,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    CircleAvatar(
                      radius: 30,
                      backgroundImage: NetworkImage(
                        usersList[index].image?? ''
                        ),
                    ),
                    SizedBox(height: 10),
                    Text(usersList[index].name?? '',
                        style: TextStyle(color: Colors.white, fontSize: 10)),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return SizedBox(
                  width: 10,
                );
              },
              itemCount: usersList.length,
            ),
          ),
        ],
      ),
    );
  }
}
