import 'package:flutter/material.dart';

void main() {
  runApp(const MyTicker());
}

class MyTabbar extends StatelessWidget {
  const MyTabbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 5,
        child: Scaffold(
          appBar: AppBar(
            title: const Text('My Tab'),
            bottom: TabBar(
              isScrollable: true,
              indicatorColor: Colors.amber,
              indicatorSize: TabBarIndicatorSize.tab,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.white,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.cyan,
              ),
              tabs: const [
                Tab(
                  icon: Icon(Icons.directions_car),
                  text: 'Car',
                ),
                Tab(
                  icon: Icon(Icons.directions_train),
                  text: 'Train',
                ),
                Tab(
                  icon: Icon(Icons.directions_bike),
                  text: 'Bike',
                ),
                Tab(
                  icon: Icon(Icons.directions_boat),
                  text: 'Boat',
                ),
                Tab(
                  icon: Icon(Icons.directions_walk),
                  text: 'Walk',
                ),
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
              child: Text("Its Bike"),
            ),
            Center(
              child: Text("Its Boat"),
            ),
            Center(
              child: Text("Its Walk"),
            ),
          ]),
        ),
      ),
    );
  }
}

class MyTicker extends StatefulWidget {
  const MyTicker({super.key});

  @override
  State<MyTicker> createState() => _MyTickerState();
}

class _MyTickerState extends State<MyTicker>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    // _tabController.addListener(() { })
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Ticker Widget'),
          bottom: TabBar(
            controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.directions_bike),
              ),
              Tab(
                icon: Icon(Icons.directions_car),
              ),
              Tab(
                icon: Icon(Icons.directions_train),
              ),
            ],
          ),
        ),
        body: TabBarView(
          controller: _tabController,
          children: const [
            Center(
              child: Text('Bike'),
            ),
            Center(
              child: Text('Car'),
            ),
            Center(
              child: Text('Train'),
            ),
          ],
        ),
      ),
    );
  }
}
