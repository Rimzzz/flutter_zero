import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(const MyFloating());
}

class MyFloating extends StatelessWidget {
  const MyFloating({super.key});

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
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: Container(
        margin: const EdgeInsets.only(top: 40),
        child: FloatingActionButton(
          onPressed: () {},
          backgroundColor: Colors.blue,
          child: const Icon(Icons.add_a_photo),
        ),
      ),
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   backgroundColor: Colors.red,
      //   icon: const Icon(Icons.thumb_up),
      //   label: const Text('Slap Like Now'),
      // ),
      appBar: AppBar(
        title: const Text('Floating Button'),
      ),
      body: const Center(
        child: Text('Bukan Floating Button'),
      ),
    );
  }
}
