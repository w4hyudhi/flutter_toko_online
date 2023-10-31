import 'dart:convert';

import 'package:http/http.dart' as http;

import 'package:flutter_toko_online/models/user_model.dart';

class AuthService {
  String baseUrl = 'http://192.168.100.77:8000/api';

  Future<UserModel> regsiter(
      {String? name, String? username, String? email, String? password}) async {
    var url = Uri.parse('$baseUrl/register');
    var headers = {'Content-Type': 'application/json'};

    var body = jsonEncode({
      'name': name,
      'username': username,
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );
    print('response : ${response.body}');
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ${data['access_token']}';
      return user;
    } else {
      throw Exception('Gagal Register');
    }
  }

  Future<UserModel> login({email, String? password}) async {
    var url = Uri.parse('$baseUrl/login');
    var headers = {'Content-Type': 'application/json'};

    var body = jsonEncode({
      'email': email,
      'password': password,
    });

    var response = await http.post(
      url,
      headers: headers,
      body: body,
    );

    if (response.statusCode == 200) {
      var data = jsonDecode(response.body)['data'];
      UserModel user = UserModel.fromJson(data['user']);
      user.token = 'Bearer ${data['access_token']}';
      return user;
    } else {
      throw Exception('Gagal Login');
    }
  }
}
