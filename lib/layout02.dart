import 'package:flutter/material.dart';

void main() {
  runApp(const MyLayout());
}

class MyLayout extends StatelessWidget {
  const MyLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Center(
            child: _stack(),
          ),
        ),
      ),
    );
  }

  Widget _stack() {
    // -- STACK --
    // return Stack(
    //   alignment: Alignment.topLeft,
    //   children: <Widget>[
    //     Container(
    //       width: 120,
    //       height: 120,
    //       color: Colors.red,
    //     ),
    //     Container(
    //       width: 90,
    //       height: 90,
    //       color: Colors.green,
    //     ),
    //     Container(
    //       width: 80,
    //       height: 80,
    //       color: Colors.blue,
    //     ),
    //   ],
    // );
    // -- ALIGN --
    return Container(
      width: 300,
      height: 300,
      color: Colors.red,
      child: Stack(
        alignment: Alignment.bottomRight,
        children: <Widget>[
          Align(
            alignment: Alignment.topLeft,
            child: Container(
              height: 150,
              width: 150,
              color: Colors.green,
            ),
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              height: 100,
              width: 100,
              color: Colors.blue,
            ),
          ),
          // -- POSITIONED
          Positioned(
            right: 0,
            top: 0,
            child: Container(
              height: 80,
              width: 80,
              color: Colors.yellow,
            ),
          ),
        ],
      ),
    );
  }
}
