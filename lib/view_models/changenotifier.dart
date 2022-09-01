import 'package:architecture/models/counter.dart';
import 'package:architecture/services/local_services.dart';
import 'package:flutter/material.dart';
import 'package:flutter_state_notifier/flutter_state_notifier.dart';
import 'package:state_notifier/state_notifier.dart';

class Changes extends StatelessWidget {
  const Changes({Key? key, required this.child}) : super(key: key);
  final Widget child;
  @override
  Widget build(BuildContext context) {
    return StateNotifierProvider<MyModel, Counter>(
      create: (c) => MyModel(),
      child: child,
    );
  }
}

class MyModel extends StateNotifier<Counter> with LocatorMixin {
  MyModel() : super(Counter());

  void incrementCounter() {
    state = state.rebuild((p0) => p0.counter = (state.counter ?? 0) + 1);
    print(state);
    set(state.counter ?? 0);
  }

  void decrementCounter() {
    state = state.rebuild((p0) => p0.counter = (state.counter ?? 0) - 1);
    print(state);
    set(state.counter ?? 0);
  }

  void fromSharedPref(int value) {
    state = state.rebuild((p0) => p0.counter = value);
  }
}
