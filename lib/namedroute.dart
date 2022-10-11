import 'package:flutter/material.dart';

void main() {
  runApp(const MyNamedRoute());
}

class MyNamedRoute extends StatelessWidget {
  const MyNamedRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: (settings) {
        if (settings.name == '/second') {
          final args = settings.arguments;
          return PageRouteBuilder(
            settings: settings,
            pageBuilder: (_, __, ___) => SecondPage(args),
            transitionsBuilder: ((_, a, __, c) => FadeTransition(
                  opacity: a,
                  child: c,
                )),
          );
        }
        return null;
      },
      routes: {
        '/first': (context) => const FirstPage(),
        // '/second': (context) => const SecondPage(),
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
        title: const Text('Halaman Pertama'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pushNamed(context, '/second', arguments: 'Halo Joe');
          },
          child: const Text('Halaman Pertama'),
        ),
      ),
    );
  }
}

class SecondPage extends StatelessWidget {
  // const SecondPage({super.key, this.title});

  final title;
  const SecondPage(this.title, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
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
