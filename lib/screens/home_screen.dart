import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class HomeScreen extends StatelessWidget {
  void search() {}

  void goToMessenger() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            brightness: Brightness.light,
            backgroundColor: Colors.white,
            title: Text(
              'facebook',
              style: const TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
            actions: [
              CircleButton(
                  icon: Icon(Icons.search), onPressed: search, iconSize: 30.0),
              CircleButton(
                  icon: Icon(MdiIcons.facebookMessenger),
                  onPressed: goToMessenger,
                  iconSize: 30.0)
            ],
            centerTitle: false,
            floating: true,
          ),
          SliverToBoxAdapter(
            child: PostContainer(currentUser: currentUser),
          )
        ],
      ),
    );
  }
}
