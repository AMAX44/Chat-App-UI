import 'package:chatui/constant/data.dart';
import 'package:chatui/theme/colors.dart';
import 'package:flutter/material.dart';

class Messages extends StatelessWidget {
  const Messages({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(
        userMessages.length,
        (index) {
          return Container(
            height: 100,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Color(0xffece1d9),
                  width: 1,
                ),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Container(
                  width: 100,
                  height: 90,
                  child: Stack(
                    children: <Widget>[
                      //Chat Section Stories
                      // userMessages[index]['story']
                      //     ? Container(
                      //         width: 75,
                      //         height: 75,
                      //         decoration: BoxDecoration(
                      //           shape: BoxShape.circle,
                      //           border: Border.all(
                      //             width: 3,
                      //             color: red_story,
                      //           ),
                      //         ),
                      //         child: Padding(
                      //           padding: EdgeInsets.all(1.0),
                      //           child: Container(
                      //             width: 73,
                      //             height: 73,
                      //             decoration: BoxDecoration(
                      //               shape: BoxShape.circle,
                      //               image: DecorationImage(
                      //                 image: NetworkImage(
                      //                   userMessages[index]['img'],
                      //                 ),
                      //                 fit: BoxFit.cover,
                      //               ),
                      //             ),
                      //           ),
                      //         ),
                      //       )
                      Padding(
                        padding: const EdgeInsets.only(left: 8.0, top: 8),
                        child: Container(
                          width: 73,
                          height: 73,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            image: DecorationImage(
                              image: NetworkImage(
                                userMessages[index]['img'],
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      userMessages[index]['online']
                          ? Positioned(
                              bottom: 73,
                              left: 56,
                              child: Container(
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  color: online,
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                    width: 3,
                                    color: Color(0xff2b9d8f),
                                  ),
                                ),
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
                // SizedBox(
                //   width: 0,
                // ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      userMessages[index]['name'],
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        // fontStyle: FontStyle.italic,
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      height: 45,
                      width: 115,
                      child: Text(
                        userMessages[index]['message'],
                        style: TextStyle(
                          fontSize: 15,
                          color: userMessages[index]['notification']
                              ? Colors.blue
                              : Colors.grey[800],
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  width: 40,
                ),
                Padding(
                  padding: const EdgeInsets.only(right: 15, top: 17),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        userMessages[index]['created_at'],
                        style: TextStyle(color: Colors.grey),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      userMessages[index]['notification']
                          ? CircleAvatar(
                              backgroundColor: Colors.blue,
                              radius: 15,
                              child: Text(
                                '1',
                                style: TextStyle(color: Colors.white),
                              ),
                            )
                          : Container()
                    ],
                  ),
                ),
              ],
            ),

            ///
          );
        },
      ),
    );
  }
}
