import 'package:flutter/material.dart';
import 'package:myapp/widgets/home_widget.dart';
import 'package:myapp/widgets/profile_widget.dart';

import 'profile_screen.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    HomeWidget(welcomeMessage: 'Selamat datang!'),
    ProfileWidget(),
  ];

  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main'),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTap,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(children: [
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.deepPurple,
            ),
            child: Text('Welcome!'),
          ),
          ListTile(
            title: const Text('Home'),
            onTap: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                  builder: (context) => MainScreen(),
                ),
              );
            },
          ),
          ListTile(
              title: const Text('Profile'),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const ProfileScreen(data: 'Riko'),
                  ),
                );
              }),
        ]),
      ),
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
        // child: ElevatedButton(
        //   onPressed: () {
        //     Navigator.push(
        //       context,
        //       MaterialPageRoute(
        //         builder: (context) => const ProfileScreen(data: 'Riko'),
        //       ),
        //     );
        //   },
        //   child: const Text('View Profile'),
        // ),
      ),
    );
  }
}
