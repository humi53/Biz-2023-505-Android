import 'package:flutter/material.dart';

import './page/main_drawer.dart';
import 'page/email_page.dart';
import 'page/home_page.dart';
import 'page/my_page.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        "/home": (context) => const HomePage(),
        "/mypage": (context) => const MyPage(),
        "/email": (context) => const EmailPage(),
      },
      home: const StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StatefulWidget> createState() => _StartPage();
}

class _StartPage extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Flutter Navi"),
      ),
      drawer: mainDrawer(context),
    );
  }
}
