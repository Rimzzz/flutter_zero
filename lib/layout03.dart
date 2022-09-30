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
          // -- ASPECT RATIO --
          // child: Container(
          //   height: 100,
          //   width: double.infinity,
          //   color: Colors.lightBlue,
          //   alignment: Alignment.center,
          //   child: AspectRatio(
          //     aspectRatio: 2 / 1,
          //     child: Container(
          //       color: Colors.green,
          //     ),
          //   ),
          // ),
          // -- CARD --
          // child: Card(
          //   elevation: 5,
          //   child: Column(
          //     mainAxisSize: MainAxisSize.min,
          //     children: <Widget>[
          //       const ListTile(
          //         leading: Icon(Icons.album),
          //         title: Text('Welcome'),
          //         subtitle: Text('Hehehe hah, thanks you'),
          //       ),
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.end,
          //         children: <Widget>[
          //           TextButton(
          //             child: const Text('Buy Now'),
          //             onPressed: () {},
          //           ),
          //           const SizedBox(
          //             width: 8,
          //           ),
          //           TextButton(
          //             child: const Text('Detail'),
          //             onPressed: () {},
          //           ),
          //         ],
          //       )
          //     ],
          //   ),
          // ),
          // -- WRAP --
          child: Wrap(
            // direction: Axis.vertical,
            // alignment: WrapAlignment.center,
            // runAlignment: WrapAlignment.spaceBetween,
            spacing: 5.0,
            runSpacing: .0,
            children: <Widget>[
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('AL'),
                ),
                label: const Text('Hamilton'),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('AT'),
                ),
                label: const Text('Hamilton'),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('AH'),
                ),
                label: const Text('Hamilton'),
              ),
              Chip(
                avatar: CircleAvatar(
                  backgroundColor: Colors.blue.shade900,
                  child: const Text('AH'),
                ),
                label: const Text('Hamilton'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
