import 'package:flutter/material.dart';

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({required this.id, required this.name, required this.phone});
}

class UsersScreen extends StatelessWidget {
  List<UserModel> users = [
    UserModel(id: 1, name: "Eyad", phone: "01090770266"),
    UserModel(id: 2, name: "a", phone: "01090770266"),
    UserModel(id: 3, name: "b", phone: "01090770266"),
    UserModel(id: 4, name: "cv", phone: "01090770266"),
    UserModel(id: 5, name: "d", phone: "01090770266"),
    UserModel(id: 6, name: "e", phone: "01090770266"),
    UserModel(id: 7, name: "f", phone: "01090770266"),
  ];

  // const UsersScreen({Key? key}) : super(key: key);
  String name = "Baby Cute Feet";
  String message = "UwU";
  String imageUrl =
      "https://www.magicmum.com/wp-content/uploads/2015/11/feet-7.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Users"),
      ),
      body: ListView.separated(
          itemBuilder: (context, index) => buildUserItem(users[index]),
          separatorBuilder: (context, index) => Container(
                width: double.infinity,
                height: 1,
                color: Colors.grey[300],
              ),
          itemCount: users.length),
    );
  }

  Widget buildUserItem(UserModel e) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: Row(
          children: [
            CircleAvatar(
              radius: 25,
              child: Text(
                "${e.id}",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              backgroundImage: NetworkImage(imageUrl),
            ),
            SizedBox(width: 20),
            Column(
              mainAxisAlignment: MainAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "${e.name}",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(
                  "${e.phone}",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ],
        ),
      );
}
