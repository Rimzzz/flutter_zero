import 'package:flutter/material.dart';

void main() {
  runApp(const MyTabbar());
}

class MyTabbar extends StatelessWidget {
  const MyTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('My Tab'),
            bottom: const TabBar(
              tabs: [
                Tab(icon: Icon(Icons.directions_car)),
                Tab(icon: Icon(Icons.directions_train)),
                Tab(icon: Icon(Icons.directions_bike)),
              ],
            ),
          ),
          body: const TabBarView(children: [
            Center(
              child: Text("Its Car"),
            ),
            Center(
              child: Text("Its Train"),
            ),
            Center(
              child: Text("Its BIke"),
            ),
          ]),
        ),
      ),
    );
  }
}
