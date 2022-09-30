import 'package:flutter/material.dart';

void main() {
  runApp(const MyNav());
}

class MyNav extends StatelessWidget {
  const MyNav({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(child: Text('BottomNavigationBar')),
      ),
    );
  }
}
