import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:nodeback/models/user_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  static Future<void> createUser(UserModel model) async {
    try {
      Uri reqUri = Uri.parse('http://10.0.2.2:5000/signUp');

      var response = await http.post(
        reqUri,
        headers: <String, String>{
          'Content-Type': 'application/json',
        },
        body: model.toJson(),
      );
      var resDecode = jsonDecode(response.body);
      print(resDecode['token']);
      SharedPreferences prefs = await SharedPreferences.getInstance();
      await prefs.setString('token', resDecode['token']);
    } on SocketException {
      print('..................Socket..........');
    } catch (e) {
      print(e.toString());
    }
  }
}
