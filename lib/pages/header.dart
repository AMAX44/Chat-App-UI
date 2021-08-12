import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Container(
            height: 30,
            width: 30,
            color: Colors.grey[100],
            child: Icon(CupertinoIcons.search),
          ),
        ),
        Text(
          'Messages',
          style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 20),
          child: CircleAvatar(
            radius: 20.0,
            backgroundImage: AssetImage('assets/images/bappe.jpg'),
            backgroundColor: Colors.transparent,
          ),
        ),
      ],
    );
  }
}
