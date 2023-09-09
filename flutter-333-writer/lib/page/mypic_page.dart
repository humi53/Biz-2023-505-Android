import 'package:flutter/material.dart';

class Mypic extends StatefulWidget {
  const Mypic({super.key});

  @override
  State<Mypic> createState() => _MypicState();
}

class _MypicState extends State<Mypic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("나의 작품들"),
      ),
      body: const Text("나의 작품들"),
    );
  }
}
