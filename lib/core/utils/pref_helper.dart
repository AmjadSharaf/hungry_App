import 'package:shared_preferences/shared_preferences.dart';

class PrefHelper {
  static const String _token_key = "auth_token";

  static Future<void> saveToken(String token) async {
    final pref = await SharedPreferences.getInstance();
    await pref.setString(_token_key, token);
  }

  static Future<String?> getToken() async {
    final pref = await SharedPreferences.getInstance();
   return pref.getString(_token_key);

  }

  static Future<void> clearToken() async {
    final pref = await SharedPreferences.getInstance();
    pref.clear();
  }
}
