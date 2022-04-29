import 'package:flutter/foundation.dart';
import 'package:smart/addhome.dart';
import 'package:smart/constants.dart';
import 'main.dart';
import 'package:flutter/material.dart';
import 'addhome.dart';

class Room_Page extends StatefulWidget {
  const Room_Page({Key? key}) : super(key: key);

  @override
  State<Room_Page> createState() => _Room_PageState();
}

class _Room_PageState extends State<Room_Page> {
  Widget appbar(size) {
    Size abHeight = size * 0.25, abWidth = size;
    return Container(
        height: abHeight.height,
        width: abWidth.width,
        decoration: BoxDecoration(
            color: Colors.blue[300],
            borderRadius: const BorderRadius.only(
              bottomRight: Radius.circular(10.0),
              bottomLeft: Radius.circular(10.0),
            ),
            boxShadow: const [
              BoxShadow(
                  color: Colors.black38,
                  blurRadius: 3,
                  spreadRadius: -5,
                  offset: Offset(0, 5))
            ]),
        child: Padding(
          padding: EdgeInsets.only(
              top: abHeight.height * 0.2,
              bottom: abHeight.height * 0.025,
              right: abWidth.width * 0.05,
              left: abWidth.width * 0.05),
          child: Container(
            //color: Colors.black, //just chenk area
            padding: EdgeInsets.only(top: abHeight.height * 0.1),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    //App Icon and name
                    Row(
                      children: [
                        Container(
                          height: abHeight.height * 0.4,
                          width: abWidth.width * 0.2,
                          alignment: Alignment.bottomCenter,
                          //color: Colors.red, //just chenk area
                          child: Icon(
                            Icons.home,
                            color: Colors.white,
                            size: abHeight.height * 0.38,
                          ),
                        ),
                        Container(
                          height: abHeight.height * 0.4,
                          width: abWidth.width * 0.48,
                          padding:
                              EdgeInsets.only(bottom: abHeight.height * 0.02),
                          alignment: Alignment.bottomLeft,
                          //color: Colors.yellow, //just cheCk area
                          child: Text(
                            "HOME PLUS",
                            style: TextStyle(
                                fontSize: abHeight.height * 0.2,
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    ),
                    //Username and setting button
                    Row(
                      children: [
                        Container(
                          height: abHeight.height * 0.2,
                          width: abWidth.width * 0.405,
                          margin: EdgeInsets.only(left: abHeight.height * 0.15),
                          alignment: Alignment.topLeft,
                          //color: Colors.yellow, //just chenk area
                          child: Row(
                            children: [
                              Text(
                                //Autotext here
                                "Username", //get username
                                style: TextStyle(
                                    fontSize: abHeight.height * 0.15,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white),
                              ),
                              const Spacer(),
                              //setting icon
                              Material(
                                color: Colors.blue[300],
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(1000)),
                                child: IconButton(
                                  icon: const Icon(Icons.settings),
                                  color: Colors.white,
                                  iconSize: abHeight.height * 0.15,
                                  onPressed: () {
                                    // ignore: avoid_print
                                    print('go to setting page');
                                    //go to setting page
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    )
                  ],
                ),
                //Noti button
                Container(
                  height: abHeight.height * 0.6,
                  width: abWidth.width * 0.2,
                  alignment: Alignment.bottomCenter,
                  //color: Colors.red, // just check area
                  child: Container(
                    height: abHeight.height * 0.3,
                    width: abWidth.width * 0.2,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle, color: Colors.yellow[300]),
                    child: SizedBox(
                      height: abHeight.height * 0.3,
                      width: abWidth.width * 0.2,
                      child: FlatButton(
                        shape: const CircleBorder(),
                        child: Icon(Icons.notifications,
                            size: abWidth.width * 0.08),
                        onPressed: () {
                          //go to noti page
                          // ignore: avoid_print
                          print("Go to notification page");
                        },
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      height: size.height * 0.5,
      width: size.width,
      child: Scaffold(
        backgroundColor: kSecoundaryColor,
        body: Column(
          children: [
            appbar(size),
            addhome("Room1", "Device 2"),
            addhome("Room2", "Device 3")
          ],
        ),
      ),
    );
  }
}
