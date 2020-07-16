import 'package:flutter/material.dart';
import 'package:flutternavigationdrawer/Screen/DrawerScreen.dart';
import 'package:flutternavigationdrawer/Screen/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          DrawerScreen(),
          HomeScreen()
        ],
      ),
    );
  }
}
