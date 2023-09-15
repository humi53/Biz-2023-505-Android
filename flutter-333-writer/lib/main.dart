import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:writer/firebase_options.dart';
import 'package:writer/page/login_page.dart';
import 'package:writer/page/main_Menu.dart';
import 'package:writer/providers/simple_data.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => SimpleData()),
      ],
      child: const App(),
    ),
  );
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: StartPage(),
    );
  }
}

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  late User? _authUser;

  String myString = "test";
  @override
  void initState() {
    super.initState();
    _authUser = FirebaseAuth.instance.currentUser;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nado Painter"),
      ),
      body: _authUser != null ? const Text("배경화면 만들기.") : const LoginPage(),
      drawer: _authUser != null ? mainMenu(context) : null,
    );
  }
}
