import 'package:flutter/material.dart';

void main() {
  runApp(const MyContainer());
}

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Container(
            margin: const EdgeInsets.all(50),
            padding: const EdgeInsets.all(20),
            width: 300,
            height: 300,
            decoration: BoxDecoration(
              color: Colors.purple,
              border: Border.all(color: Colors.black, width: 2),
              borderRadius: const BorderRadius.all(
                Radius.circular(150),
              ),
            ),
            alignment: Alignment.center,
            child: const Text(
              "Hello Flutter",
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontFamily: 'Roboto',
                letterSpacing: 5,
                wordSpacing: 1,
                fontStyle: FontStyle.normal,
                // decoration: TextDecoration.lineThrough,
                // decorationColor: Colors.black,
                // decorationStyle: TextDecorationStyle.solid,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
