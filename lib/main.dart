// @dart=2.9

import 'package:architecture/view_models/changenotifier.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Changes();
  }
}
