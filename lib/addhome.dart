import 'package:flutter/material.dart';
import 'Home_Page.dart';
import 'constants.dart';

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
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        height: 120,
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
    );
  }
}
