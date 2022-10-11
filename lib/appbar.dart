import 'package:flutter/material.dart';

void main() {
  runApp(const MyAppBar());
}

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

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
        leading: IconButton(
          icon: const Icon(Icons.settings),
          onPressed: () {},
        ),
        // leadingWidth: 100,
        title: const Text('APP BAR'),
        centerTitle: true,
        actions: const [
          Icon(Icons.settings),
          SizedBox(width: 15),
          Icon(Icons.more),
        ],
        backgroundColor: Colors.deepPurpleAccent,
        elevation: 5,
        // toolbarHeight: 50,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => const SecondPage(),
              ),
            );
          },
          style: const ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll<Color>(Colors.deepPurpleAccent)),
          child: const Text('Next Page',
              style: TextStyle(
                color: Colors.white,
              )),
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
        title: const Text('Page Two'),
        // automaticallyImplyLeading: false,
      ),
      body: const Center(
        child: Text('Second Page'),
      ),
    );
  }
}
