import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/screens/home_screen/home_screen_desktop.dart';
import 'package:facebook_clone/screens/home_screen/home_screen_mobile.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Responsive(
        mobile: HomeScreenMobile(),
        desktop: HomeScreenDesktop(),
      ),
    );
  }
}
