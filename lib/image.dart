import 'package:flutter/material.dart';

void main() {
  runApp(const MyImage());
}

class MyImage extends StatelessWidget {
  const MyImage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text(
            'Netword Image & Asset Image',
          ),
        ),
        body: Center(
          child: Container(
            width: 350,
            height: 280,
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(20),
              image: const DecorationImage(
                image: AssetImage('assets/images/wakamo.PNG'),
                fit: BoxFit.cover,
              ),
            ),
            // child: Image.asset(
            //   'assets/images/wakamo.PNG',
            //   // color: Colors.red,
            //   // colorBlendMode: BlendMode.lighten,
            //   // alignment: Alignment.center,
            //   // fit: BoxFit.contain,
            //   // repeat: ImageRepeat.repeatY,
            // ),
          ),
        ),
      ),
    );
  }
}
