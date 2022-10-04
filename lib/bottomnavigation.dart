import 'package:flutter/material.dart';

void main() {
  runApp(const MyNav());
}

class MyNav extends StatelessWidget {
  const MyNav({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CustomBottomNavigationBar(),
    );
  }
}

class CustomBottomNavigationBar extends StatefulWidget {
  const CustomBottomNavigationBar({super.key});

  @override
  State<CustomBottomNavigationBar> createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _page = [
    const Text('HomePage'),
    const Text('BussinessPage'),
    const TextField(),
    const Text('SettingPage'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: IndexedStack(
          alignment: AlignmentDirectional.center,
          index: _selectedIndex,
          children: const [
            Text('Home Page'),
            Text('Bussiness Page'),
            TextField(),
            Text('Setting Page'),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        // mouseCursor: SystemMouseCursors.forbidden,
        showUnselectedLabels: true,
        backgroundColor: Colors.grey[200],
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.deepOrange,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.business),
            label: 'Business',
            backgroundColor: Colors.teal,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money),
            label: 'Cashier',
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Setting',
            backgroundColor: Colors.blueGrey,
          ),
        ],
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.blueGrey,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}
