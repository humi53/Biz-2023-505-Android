import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(
    const Center(
      child: NewWidget(),
    ),
  );
}

class NewWidget extends StatelessWidget {
  const NewWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "어서와요",
      style: TextStyle(
        fontSize: 30,
        color: Color.fromRGBO(255, 0, 0, 1),
      ),
      textDirection: TextDirection.ltr,
    );
  }
}
