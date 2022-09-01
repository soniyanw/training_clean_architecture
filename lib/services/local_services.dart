import 'package:shared_preferences/shared_preferences.dart';

Future<int> get() async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  return sharedPreferences.getInt('counter') ?? 0;
}

void set(int counter) async {
  SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  sharedPreferences.setInt('counter', counter);
}
