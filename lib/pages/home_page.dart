import 'package:chatui/pages/Stories.dart';
import 'package:chatui/pages/header.dart';
import 'package:chatui/pages/messages.dart';
import 'package:chatui/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getBody(),
      bottomNavigationBar: Row(
        children: [
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              color: grey,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/conversation.png',
                  scale: 20,
                  color: Colors.blue,
                ),
                Text(
                  'Messages',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              color: grey,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.notifications,
                  color: Colors.grey,
                ),
                Text('Notification'),
              ],
            ),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              color: grey,
            ),
            child: CircleAvatar(
              backgroundColor: Colors.blue,
              radius: 15,
              child: Icon(
                Icons.add,
                size: 30,
                color: grey,
              ),
            ),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              color: grey,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.call,
                  color: Colors.grey,
                ),
                Text('Phone'),
              ],
            ),
          ),
          Container(
            height: 80,
            width: MediaQuery.of(context).size.width / 5,
            decoration: BoxDecoration(
              color: grey,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Icon(
                  Icons.people_alt,
                  color: Colors.grey,
                ),
                Text('Contacts'),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget getBody() {
    return SafeArea(
      child: Padding(
        padding: EdgeInsets.only(
          left: 0,
          right: 0,
          top: 10,
        ),
        child: ListView(
          children: [
            Column(
              children: [
                Header(),

                SizedBox(
                  height: 30,
                ),

                Stories(),

                //Messages Section

                SizedBox(height: 10),

                Messages(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
