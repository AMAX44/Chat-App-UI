import 'package:chatui/pages/BottomNavBar.dart';
import 'package:chatui/pages/Stories.dart';
import 'package:chatui/pages/messages.dart';
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
      bottomNavigationBar: BottomNavBar(),
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Text(
          'Messages',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.black,
            fontSize: 28,
          ),
        ),
        centerTitle: true,
        leading: Icon(
          CupertinoIcons.search,
          color: Colors.grey,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              radius: 20.0,
              backgroundImage: AssetImage('assets/images/bappe.jpg'),
              backgroundColor: Colors.transparent,
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
                SizedBox(
                  height: 10,
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
