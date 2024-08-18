import 'package:chat_app_ui/core/models/user_model.dart';
import 'package:flutter/material.dart';

class chat_list_widget extends StatelessWidget {
  const chat_list_widget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(50), topRight: Radius.circular(50))),
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: ListView.separated(
            scrollDirection: Axis.vertical,
            itemCount: usersList.length,
            separatorBuilder: (BuildContext context, int index) {
              return SizedBox(height: 0);
            },
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                contentPadding: EdgeInsets.zero,
                leading: CircleAvatar(
                  radius: 30,
                  backgroundImage: NetworkImage(usersList[index].image ?? ''),
                ),
                title: Text(
                  usersList[index].name?.split(' ').first ?? '',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                subtitle: Text(
                  'Hello dear, How ar u ?',
                  style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.normal,
                    fontSize: 12,
                  ),
                ),
                trailing: Text(
                  usersList[index].time ?? '',
                  style: TextStyle(color: Colors.black),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
