import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class SimpleData extends ChangeNotifier {
  String _myString = "test";
  late User? _authUser;

  SimpleData() {
    _authUser = FirebaseAuth.instance.currentUser;
  }

  void setAuthUser(User? authUser) {
    _authUser = authUser;
    notifyListeners();
  }

  Future<User?> getAuthUser() async {
    return _authUser;
  }

  Future<String> getMyString() async {
    notifyListeners();
    return _myString;
  }

  void setMyString(strMy) {
    _myString = strMy;
    notifyListeners();
  }
}
