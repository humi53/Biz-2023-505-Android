import 'package:flutter/material.dart';

class Allpic extends StatefulWidget {
  const Allpic({super.key});

  @override
  State<Allpic> createState() => _AllpicState();
}

class _AllpicState extends State<Allpic> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("모든작품들"),
      ),
      body: const Text("모든 작품들 보기"),
    );
  }
}
