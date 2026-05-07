import 'package:shared_preferences/shared_preferences.dart';

class SharedPref {
  static late SharedPreferences prefs;
  static Future init() async {
    prefs = await SharedPreferences.getInstance();
  }
  static Future<void> saveToken(String token) async {
    await prefs.setString('token', token);
  }
  static String getToken() {
    return prefs.getString('token')??'';
  }
  static void removeToken() {
    prefs.remove('token');
  }

}