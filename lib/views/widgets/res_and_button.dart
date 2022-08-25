import 'package:architecture/view_models/changenotifier.dart';
import 'package:architecture/views/widgets/minustext.dart';
import 'package:architecture/views/widgets/plustext.dart';
import 'package:architecture/views/widgets/sizedbox30.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class Increment extends StatefulWidget {
  const Increment({Key? key}) : super(key: key);

  @override
  State<Increment> createState() => _IncrementState();
}

class _IncrementState extends State<Increment> {
  @override
  Widget build(BuildContext context) {
    return Consumer<MyModel>(builder: (context, myModel, child) {
      return Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Text(
            '${myModel.counter}',
            style: Theme.of(context).textTheme.headline4,
          ),
          Sizedbox30(),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    myModel.decrementCounter();
                    print(myModel.counter);
                  });
                },
                tooltip: 'Increment',
                child: const Minus(),
              ),
              FloatingActionButton(
                onPressed: () {
                  setState(() {
                    myModel.incrementCounter();
                    print(myModel.counter);
                  });
                },
                tooltip: 'Increment',
                child: const Plus(),
              ),
            ],
          ),
        ],
      );
    });
  }
}
