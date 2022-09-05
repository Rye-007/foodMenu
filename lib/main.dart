import 'package:flutter/material.dart';
import './manu1.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.green,
          title: Text("FOOD MENU"),
        ),
        body: Manu1(),
        ),
    );
  }
}
