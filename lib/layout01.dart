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
            child: Container(
              height: 100,
              color: Colors.grey[200],
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                // -- Expanded --
                children: [
                  Expanded(
                    flex: 1,
                    child: _blueBox(),
                  ),
                  SizedBox(
                    height: 100,
                    child: _blueBox(),
                  ),
                  Expanded(
                    flex: 1,
                    child: _blueBox(),
                  ),
                ],
                // -- Flexible --
                // children: [
                //   Flexible(
                //     fit: FlexFit.tight,
                //     flex: 2,
                //     child: _blueBox(),
                //   ),
                //   Flexible(
                //     fit: FlexFit.tight,
                //     flex: 4,
                //     child: _blueBox(),
                //   ),
                //   Flexible(
                //     fit: FlexFit.tight,
                //     flex: 2,
                //     child: _blueBox(),
                //   ),
                // ],
                // -- Spacer --
                // children: [
                //   _blueBox(),
                //   const Spacer(
                //     flex: 1,
                //   ),
                //   _blueBox(),
                //   const Spacer(
                //     flex: 4,
                //   ),
                //   _blueBox(),
                // ],
              ),
              // child: Column(
              //   mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              //   crossAxisAlignment: CrossAxisAlignment.end,
              //   children: [
              //     _blueBox(),
              //     SizedBox(
              //       height: 100,
              //       child: _blueBox(),
              //     ),
              //     _blueBox(),
              //   ],
              // ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _blueBox() {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 50,
      height: 50,
      decoration: BoxDecoration(
        color: Colors.lightBlue,
        border: Border.all(
          width: 3,
          color: Colors.blue,
        ),
      ),
    );
  }
}
