import 'package:chatui/constant/data.dart';
import 'package:chatui/theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  const Stories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 10, left: 20),
      height: 180,
      color: Colors.grey[100],
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(
                'Stories',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 20,
                  color: Colors.grey,
                ),
              ),
            ),
            Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(right: 25, top: 15),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        width: 73,
                        height: 73,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.grey[300],
                        ),
                        child: Icon(
                          CupertinoIcons.add,
                          size: 35,
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        'Your Story',
                        style: TextStyle(fontSize: 15),
                      ),
                    ],
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      children: List.generate(
                        userStories.length,
                        (index) {
                          return Padding(
                            padding: const EdgeInsets.only(
                                right: 20, top: 20, left: 0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  width: 73,
                                  height: 73,
                                  child: Stack(
                                    children: <Widget>[
                                      userStories[index]['story']
                                          ? Container(
                                              width: 75,
                                              height: 75,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                border: Border.all(
                                                  width: 2,
                                                  color: red_story,
                                                ),
                                              ),
                                              child: Padding(
                                                padding: EdgeInsets.all(1.0),
                                                child: Container(
                                                  width: 73,
                                                  height: 73,
                                                  decoration: BoxDecoration(
                                                    shape: BoxShape.circle,
                                                    image: DecorationImage(
                                                      image: NetworkImage(
                                                        userStories[index]
                                                            ['img'],
                                                      ),
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            )
                                          : Container(
                                              width: 73,
                                              height: 73,
                                              decoration: BoxDecoration(
                                                shape: BoxShape.circle,
                                                image: DecorationImage(
                                                  image: NetworkImage(
                                                    userStories[index]['img'],
                                                  ),
                                                  fit: BoxFit.cover,
                                                ),
                                              ),
                                            ),

                                      //Stories online mark

                                      // userStories[index]['online']
                                      //     ? Positioned(
                                      //         bottom: 63,
                                      //         left: 53,
                                      //         child: Container(
                                      //           width: 10,
                                      //           height: 10,
                                      //           decoration: BoxDecoration(
                                      //             color: online,
                                      //             shape: BoxShape.circle,
                                      //             border: Border.all(
                                      //               width: 3,
                                      //               color:
                                      //                   Color(0xff2b9d8f),
                                      //             ),
                                      //           ),
                                      //         ),
                                      //       )
                                      //
                                      // : Container(),
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  userStories[index]['name'],
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ),
                          );
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
