import 'package:architecture/view_models/changenotifier.dart';
import 'package:architecture/views/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Changes(child: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}
