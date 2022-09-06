import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SharedPreference {
  Future<int> get() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    return sharedPreferences.getInt('counter') ?? 0;
  }

  void set(int counter) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    sharedPreferences.setInt('counter', counter);
  }
}

class SecuredStorage {
  FlutterSecureStorage instance = FlutterSecureStorage();
  Future<void> set(int counter) async {
    await instance.write(key: 'counter', value: counter.toString());
  }

  Future<String?> get() async {
    var a = await instance.read(key: 'counter');
    return a;
  }
}
