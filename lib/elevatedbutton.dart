import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyButton());
}

class MyButton extends StatelessWidget {
  const MyButton({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Elevated Button'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.teal,
                foregroundColor: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              // style: ButtonStyle(
              //   backgroundColor: MaterialStateProperty.all(Colors.greenAccent),
              //   foregroundColor: MaterialStateProperty.all(Colors.black),
              //   elevation: MaterialStateProperty.all(5),
              // ),
              child: const Text('Timpa Kerapihan'),
            ),
            TextButton(
              onPressed: () {},
              child: const Text('Text Button'),
            ),
            OutlinedButton(
              onPressed: () {},
              child: const Text('Tombol Hoax'),
            ),
            ElevatedButton.icon(
              onPressed: null,
              icon: const Icon(Icons.search),
              label: const Text('Buset'),
            ),
          ],
        ),
      ),
    );
  }
}
