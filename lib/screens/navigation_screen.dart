import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class NavigationScreen extends StatefulWidget {
  @override
  _NavigationScreenState createState() => _NavigationScreenState();
}

class _NavigationScreenState extends State<NavigationScreen> {
  final List<Widget> screens = [
    HomeScreen(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
    Scaffold(),
  ];
  int _currentIndex = 0;

  void _tapBottomNavigationItem(int currentIndex) {
    print(currentIndex);
    setState(() {
      _currentIndex = currentIndex;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: screens,
      ),
      bottomNavigationBar: BottomNavigationBar(
        selectedItemColor: Palette.facebookBlue,
        type: BottomNavigationBarType.fixed,
        onTap: (index) => _tapBottomNavigationItem(index),
        currentIndex: _currentIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.home),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.televisionPlay),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.accountCircleOutline),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.accountGroupOutline),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.bellOutline),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(MdiIcons.menu),
            title: SizedBox.shrink(),
          ),
        ],
      ),
    );
  }
}
