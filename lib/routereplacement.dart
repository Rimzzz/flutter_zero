import 'package:flutter/material.dart';

void main() {
  runApp(const MyRouteReplement());
}

class MyRouteReplement extends StatelessWidget {
  const MyRouteReplement({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/first',
      routes: {
        '/first': (context) => const FirstPage(),
        '/second': (context) => const SecondPage(),
        '/third': (context) => const ThirdPage(),
        '/fourth': (context) => const FourthPage(),
      },
      home: const FirstPage(),
    );
  }
}

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('First Page'),
      ),
      body: Center(
        child: Center(
          child: ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, '/second');
            },
            child: const Text('Go To Second Page'),
          ),
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
        title: const Text('Second Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushReplacementNamed('/third');
          },
          child: const Text('Go To Third Page'),
        ),
      ),
    );
  }
}

class ThirdPage extends StatelessWidget {
  const ThirdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Third Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pushNamedAndRemoveUntil(
              '/fourth',
              ModalRoute.withName('/first'),
            );
          },
          child: const Text('Go To Fourth Page'),
        ),
      ),
    );
  }
}

class FourthPage extends StatelessWidget {
  const FourthPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fourth Page'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Back To First Page'),
        ),
      ),
    );
  }
}
