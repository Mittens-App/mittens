
import 'package:shared_preferences/shared_preferences.dart';

class SessionService {

  // Save session login
  Future<void> save(String username, String token) async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.setString('username', username);
    await prefs.setString('token', token);
  }

  // Get session
  Future<(String?, String?)> get() async {
    final prefs = await SharedPreferences.getInstance();

    return Future.value((prefs.getString('username'), prefs.getString('token')));
  }

  // Delete session
  Future<void> destroy() async {
    final prefs = await SharedPreferences.getInstance();

    await prefs.remove('username');
    await prefs.remove('token');
  }
}