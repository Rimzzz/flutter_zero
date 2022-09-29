import 'package:flutter/material.dart';

void main() {
  runApp(const BasicGridView());
}

class BasicGridView extends StatelessWidget {
  const BasicGridView({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            title: const Text("Grid View"),
          ),
          body: GridView.count(
            crossAxisCount: 3,
            children: List.generate(9, (index) {
              return const Card(
                color: Colors.deepPurpleAccent,
              );
            }),
          )),
    );
  }
}
