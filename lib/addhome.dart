import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';
import 'Home_Page.dart';
import 'constants.dart';
import 'RoomPage.dart';

class addhome extends StatelessWidget {
  String title;
  String roomcount;
  addhome(this.title, this.roomcount);
  //const addhome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Container(
        width: size.width,
        height: 120,
        child: RaisedButton(
          onPressed: () => {
            Navigator.push(context, MaterialPageRoute(builder: (context) {
              return Room_Page();
            })),
          },
          color: Colors.white,
          shape: new RoundedRectangleBorder(
              borderRadius: new BorderRadius.circular(20)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(title, style: TextStyle(fontSize: 30, color: kPrimaryColor)),
              Expanded(
                child: Text(
                  roomcount,
                  style: TextStyle(color: kPrimaryColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
