import 'package:flutter/material.dart';
import 'package:writer/page/home_page.dart';
import 'package:writer/page/hotpic_page.dart';
import 'package:writer/page/main_Menu.dart';

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/home": (context) => const HomePage(),
        "/hotpic": (context) => const HotpicPage(),
      },
      home: const StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nado Painter"),
      ),
      drawer: mainMenu(context),
    );
  }
}
