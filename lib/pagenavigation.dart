import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyPageNav());
}

class MyPageNav extends StatelessWidget {
  const MyPageNav({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Pertama'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.push(
              context,
              // CupertinoPageRoute(
              //   builder: (context) {
              //     return SecondPage();
              //   },
              // ),
              PageRouteBuilder(
                pageBuilder: (c, a1, a2) => const SecondPage(),
                transitionsBuilder: (c, a1, a2, child) => FadeTransition(
                  opacity: a1,
                  child: child,
                ),
                transitionDuration: const Duration(seconds: 1),
              ),
            );
          },
          child: const Text('Halaman Pertama'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Halaman Kedua'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Halaman Kedua'),
        ),
      ),
    );
  }
}
