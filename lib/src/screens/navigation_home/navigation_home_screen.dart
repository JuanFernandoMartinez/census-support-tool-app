import 'package:census_support_tool_app/src/screens/community_information/community_manager.dart';
import 'package:flutter/material.dart';

class NavigationHome extends StatefulWidget {
  const NavigationHome({super.key});
  @override
  State<NavigationHome> createState() => _NavigationHomeState();
}

class _NavigationHomeState extends State<NavigationHome> {
  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _appBarImplementation(context),
      body: IndexedStack(
        index: _selectedIndex,
        children: const [
          // Your widgets for each destination
          Center(child: Text('Home Page')),
          Center(child: Text('Settings Page')),

          //Communities screen
          CommunityManager()
        ],
      ),
      bottomNavigationBar: _bottomNavigationBarImplementation(context),
    );
  }

  AppBar _appBarImplementation(BuildContext context) {
    return AppBar(
      title: const Text('Voluntario'),
    );
  }

  BottomNavigationBar _bottomNavigationBarImplementation(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Settings',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.meeting_room_outlined),
          label: 'Comunidades',
        ),
      ],
      currentIndex: _selectedIndex,
      selectedItemColor: Colors.blue,
      onTap: _onItemTapped,
    );
  }
}
