import 'package:architecture/services/local_services.dart';
import 'package:architecture/view_models/changenotifier.dart';
import 'package:architecture/views/changing_page.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyHomePage extends StatefulWidget {
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  void getcounter() async {
    // context.read<MyModel>().fromSharedPref(await SharedPreference().get());
    context
        .read<MyModel>()
        .fromSecStore(int.parse(await SecuredStorage().get() ?? '0'));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text("Do you want to retain old value?"),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    getcounter();
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  child: Text(
                    "Yes",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                MaterialButton(
                  key: const ValueKey('No'),
                  onPressed: () {
                    Navigator.pushAndRemoveUntil(
                      context,
                      MaterialPageRoute(builder: (context) => SecondPage()),
                      (Route<dynamic> route) => false,
                    );
                  },
                  color: Colors.blue,
                  child: Text(
                    "No",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      // floatingActionButton: Increment()
    );
  }
}
