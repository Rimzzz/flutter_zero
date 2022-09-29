import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
          body: SafeArea(
        child: Container(
          color: Colors.blue,
          child: ListView(
            padding: const EdgeInsets.all(16),
            children: [
              Container(
                color: Colors.amber[700],
                height: 300,
              ),
              Container(
                color: Colors.amber[500],
                height: 300,
              ),
              Container(
                color: Colors.amber[100],
                height: 300,
              )
            ],
          ),
        ),
      )),
    );
  }
}
