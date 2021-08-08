import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MessengerScreen extends StatelessWidget {
  // const MessengerScreen({Key? key}) : super(key: key);
  String name = "Baby Cute Feet";
  String message = "UwU";
  String imageUrl =
      "https://www.magicmum.com/wp-content/uploads/2015/11/feet-7.jpg";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        titleSpacing: 20,
        backgroundColor: Colors.white,
        elevation: 0,
        title: Row(
          children: [
            CircleAvatar(
              radius: 20,
              backgroundImage: NetworkImage("$imageUrl"),
            ),
            SizedBox(width: 10),
            Text(
              "Chats",
              style: TextStyle(
                color: Colors.black,
                fontSize: 22,
              ),
            ),
          ],
        ),
        actions: [
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(Icons.camera_alt),
              )),
          IconButton(
              onPressed: () {},
              icon: CircleAvatar(
                radius: 15,
                backgroundColor: Colors.blue,
                child: Icon(Icons.edit),
              )),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.all(5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(5),
                  color: Colors.grey[400],
                ),
                child: Row(
                  children: [
                    Icon(Icons.search),
                    SizedBox(width: 15),
                    Text("Search"),
                  ],
                ),
              ),
              SizedBox(height: 15),
              Container(
                height: 105,
                child: ListView.separated(
                  // shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) => SizedBox(width: 10),
                  itemBuilder: (context, index) => buildStatusItem(),
                  itemCount: 15,
                ),
              ),
              Divider(
                color: Colors.teal,
                height: 20,
                thickness: 2,
                indent: 10,
                endIndent: 10,
              ),
              SizedBox(height: 15),
              ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (context, index) => buildChatItem(),
                  separatorBuilder: (context, index) => SizedBox(height: 10),
                  itemCount: 15),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildChatItem() {
    return Row(
      children: [
        Container(
          width: 60,
          child: Column(
            children: [
              Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children: [
                  CircleAvatar(
                    radius: 30,
                    backgroundImage: NetworkImage("$imageUrl"),
                  ),
                  CircleAvatar(
                    radius: 8,
                    backgroundColor: Colors.white,
                  ),
                  Padding(
                    padding:
                        const EdgeInsetsDirectional.only(bottom: 3, end: 3),
                    child: CircleAvatar(
                      radius: 7,
                      backgroundColor: Colors.green,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 7),
            ],
          ),
        ),
        SizedBox(width: 20),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "$name",
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              Row(
                children: [
                  Expanded(
                    child: Text(
                      "$message",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                    ),
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: BoxDecoration(
                          color: Colors.blue, shape: BoxShape.circle),
                    ),
                  ),
                  Text("2:00PM"),
                ],
              ),
            ],
          ),
        )
      ],
    );
  }

  Widget buildStatusItem() {
    return Container(
      width: 60,
      child: Column(
        children: [
          Stack(
            alignment: AlignmentDirectional.bottomEnd,
            children: [
              CircleAvatar(
                radius: 30,
                backgroundImage: NetworkImage("$imageUrl"),
              ),
              CircleAvatar(
                radius: 8,
                backgroundColor: Colors.white,
              ),
              Padding(
                padding: const EdgeInsetsDirectional.only(bottom: 3, end: 3),
                child: CircleAvatar(
                  radius: 7,
                  backgroundColor: Colors.green,
                ),
              ),
            ],
          ),
          SizedBox(height: 7),
          Text(
            "$name",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
