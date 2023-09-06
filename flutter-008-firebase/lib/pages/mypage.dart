import 'package:firebase/pages/login_page.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class Mypage extends StatefulWidget {
  const Mypage({super.key});

  @override
  State<Mypage> createState() => _MypageState();
}

class _MypageState extends State<Mypage> {
  final User? _authUser = FirebaseAuth.instance.currentUser;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _authUser == null
          ? const LoginPage()
          : GestureDetector(
              onTap: () async {
                await FirebaseAuth.instance.signOut();
                setState(() {});
              },
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("로그인한 사용자 ${_authUser!.email}"),
                    Text("로그인한 UserId ${_authUser!.uid}"),
                  ],
                ),
              ),
            ),
    );
  }
}
