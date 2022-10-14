import 'package:flutter/material.dart';

void main() {
  runApp(MyGrid());
}

class MyGrid extends StatelessWidget {
  MyGrid({super.key});

  final _colors = <int>[100, 200, 300, 400, 500, 600];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Grid View"),
        ),
        body: SafeArea(
          // child: GridView.count(
          //   padding: EdgeInsets.all(10),
          //   crossAxisCount: 3,
          //   mainAxisSpacing: 10,
          //   crossAxisSpacing: 10,
          //   childAspectRatio: 1,
          //   children: [
          //     Container(
          //       decoration: BoxDecoration(
          //         color: Colors.blue[100],
          //         borderRadius: const BorderRadius.all(
          //           Radius.circular(10),
          //         ),
          //       ),
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         color: Colors.blue[200],
          //         borderRadius: const BorderRadius.all(
          //           Radius.circular(10),
          //         ),
          //       ),
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         color: Colors.blue[300],
          //         borderRadius: const BorderRadius.all(
          //           Radius.circular(10),
          //         ),
          //       ),
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         color: Colors.blue[400],
          //         borderRadius: const BorderRadius.all(
          //           Radius.circular(10),
          //         ),
          //       ),
          //     ),
          //     Container(
          //       decoration: BoxDecoration(
          //         color: Colors.blue[500],
          //         borderRadius: const BorderRadius.all(
          //           Radius.circular(10),
          //         ),
          //       ),
          //     ),
          //   ],
          // ),
          // -- GRID BUILDER --
          child: GridView.builder(
            padding: const EdgeInsets.only(top: 25),
            itemCount: _colors.length,
            // -- SliverGridDelegateWithFixedCrossAxisCount --
            // gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            //   crossAxisCount: 3,
            // ),
            // -- SliverGridDelegateWithMaxCrossAxisExtent --
            gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 100,
              mainAxisSpacing: 20,
              crossAxisSpacing: 10,
            ),
            itemBuilder: (context, index) {
              var color = _colors[index];
              return Container(
                color: Colors.blue[color],
              );
            },
          ),
        ),
      ),
    );
  }
}
