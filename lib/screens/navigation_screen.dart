import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/screens/home_screen/home_screen.dart';
import 'package:facebook_clone/widgets/widgets.dart';
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
  List<IconData> _icons = [
    MdiIcons.home,
    MdiIcons.televisionPlay,
    MdiIcons.accountCircleOutline,
    MdiIcons.accountGroupOutline,
    MdiIcons.bellOutline,
    MdiIcons.menu,
  ];

  void _tapBottomNavigationItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _tapTabBarItem(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    final Size screenSize = MediaQuery.of(context).size;

    return DefaultTabController(
      length: _icons.length,
      child: Scaffold(
        appBar: Responsive.isDesktop(context)
            ? PreferredSize(
                child: CustomAppBar(
                  icons: _icons,
                  currentUser: currentUser,
                  currentIndex: _currentIndex,
                  onTap: _tapTabBarItem,
                ),
                preferredSize: Size(screenSize.width, 60.0),
              )
            : null,
        body: IndexedStack(
          index: _currentIndex,
          children: screens,
        ),
        bottomNavigationBar: !Responsive.isDesktop(context)
            ? BottomNavigationBar(
                selectedItemColor: Palette.facebookBlue,
                type: BottomNavigationBarType.fixed,
                onTap: (index) => _tapBottomNavigationItem(index),
                currentIndex: _currentIndex,
                showSelectedLabels: false,
                showUnselectedLabels: false,
                items: [
                  ..._icons
                      .map(
                        (iconData) => BottomNavigationBarItem(
                            icon: Icon(iconData), label: ''),
                      )
                      .toList()
                ],
              )
            : const SizedBox.shrink(),
      ),
    );
  }
}
