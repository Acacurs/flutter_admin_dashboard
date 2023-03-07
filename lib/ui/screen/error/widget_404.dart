import 'package:flutter/material.dart';

class Widget404 extends StatefulWidget {
  const Widget404({Key? key}) : super(key: key);

  @override
  State<Widget404> createState() => _Widget404State();
}

class _Widget404State extends State<Widget404> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text("Widget not found"),
      ),
    );
  }
}
