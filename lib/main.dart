import 'package:flutter/material.dart';
import 'constants.dart';
import 'Home_Page.dart';
import 'addhome.dart';

void main() {
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: kPrimaryColor,
        backgroundColor: kSecoundaryColor,
      ),
      debugShowCheckedModeBanner: false,
      title: "My app",
      home: HomePage(),
    );
  }
}
