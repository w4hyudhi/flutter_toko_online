import 'package:flutter/material.dart';
import 'package:flutter_toko_online/models/user_model.dart';
import 'package:flutter_toko_online/services/auth_service.dart';

class AuthProvider with ChangeNotifier {
  UserModel? _user;
  set user(UserModel user) {
    _user = user;
    notifyListeners();
  }

  Future<bool> regsiter(
      {required String name,
      required String username,
      required String email,
      required String password}) async {
    try {
      UserModel user = await AuthService().regsiter(
          name: name, username: username, email: email, password: password);
      _user = user;
      return true;
    } catch (e) {
      debugPrint(e.toString());
      return false;
    }
  }
}
