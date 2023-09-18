import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:writer/models/user_dto.dart';

class LoginUserProvider extends ChangeNotifier {
  late User? _authUser;
  late UserDto? _userDto;
  LoginUserProvider() {
    _authUser = FirebaseAuth.instance.currentUser;
  }

  void setAuthUser(User? authUser) {
    _authUser = authUser;
    notifyListeners();
  }

  Future<User?> getAuthUser() async {
    return _authUser;
  }

  void setUserDto(UserDto? userDto) {
    _userDto = userDto;
    notifyListeners();
  }

  UserDto? getUserDto() {
    return _userDto;
  }
}
