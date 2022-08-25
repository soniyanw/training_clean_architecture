import 'package:flutter/material.dart';

class Minus extends StatelessWidget {
  const Minus({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '-',
      style: TextStyle(fontSize: 40),
    );
  }
}
