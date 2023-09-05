import 'package:flutter/material.dart';
import 'package:flutter_application_1/models/user.dart';
import 'package:flutter_application_1/page/detail_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    super.key,
  });

  @override
  State<HomePage> createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Home Page")),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("여기는 Home Page 입니다"),
            ElevatedButton(
                onPressed: () {
                  var user = User(
                      username: "Yopheu",
                      password: "123412345",
                      nickname: "홍길동",
                      email: "yo.pheu@gmail.com",
                      tel: "010-1111-1111");
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => DetailPage(
                        name: "홍길동", email: "yo.pheu@gmail.com", userDto: user),
                  ));
                },
                child: const Text("자세히 보기"))
          ],
        ),
      ),
    );
  }
}
