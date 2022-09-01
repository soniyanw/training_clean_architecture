import 'package:architecture/models/counter.dart';
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
    final cRead = context.read<MyModel>();
    final cWatch = context.watch<Counter>();

    //final counterRead = Provider.of<MyModel>(context, listen: false);
    //final counterWatch = Provider.of<MyModel>(context, listen: true);

    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(
          '${cWatch.counter}',
          style: Theme.of(context).textTheme.headline4,
        ),
        Sizedbox30(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            FloatingActionButton(
              heroTag: '1',
              onPressed: () {
                cRead.decrementCounter();
              },
              tooltip: 'Increment',
              child: const Minus(),
            ),
            FloatingActionButton(
              heroTag: '2',
              onPressed: () {
                cRead.incrementCounter();
              },
              tooltip: 'Increment',
              child: const Plus(),
            ),
          ],
        ),
      ],
    );
  }
}
