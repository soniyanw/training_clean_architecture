import 'package:architecture/models/decrementmethod.dart';
import 'package:architecture/models/incrementmethod.dart';
import 'package:architecture/views/homepage.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Changes extends StatefulWidget {
  const Changes({Key? key}) : super(key: key);

  @override
  State<Changes> createState() => _ChangesState();
}

class _ChangesState extends State<Changes> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<MyModel>(
      create: (context) => MyModel(),
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const MyHomePage(title: 'Flutter Demo Home Page'),
      ),
    );
  }
}

class MyModel with ChangeNotifier {
  int counter = 1;
  void incrementCounter() {
    counter = increment(counter);
  }

  void decrementCounter() {
    counter = decrement(counter);
  }

  notifyListeners();
}
