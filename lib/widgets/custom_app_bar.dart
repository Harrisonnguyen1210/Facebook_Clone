import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class CustomAppBar extends StatelessWidget {
  final User currentUser;
  final int currentIndex;
  final List<IconData> icons;
  final Function(int) onTap;

  const CustomAppBar({
    @required this.currentUser,
    @required this.currentIndex,
    @required this.icons,
    @required this.onTap,
  });

  void search() {}

  void goToMessenger() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: const [
          BoxShadow(
            color: Colors.black12,
            offset: Offset(0, 2),
            blurRadius: 4.0,
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Text(
              'facebook',
              style: const TextStyle(
                color: Palette.facebookBlue,
                fontSize: 28.0,
                fontWeight: FontWeight.bold,
                letterSpacing: -1.2,
              ),
            ),
          ),
          Container(
            width: 600.0,
            height: double.infinity,
            child: TabBar(
              onTap: (index) => onTap(index),
              tabs: icons
                  .asMap()
                  .map(
                    (index, iconData) => MapEntry(
                      index,
                      Tab(
                        icon: Icon(
                          iconData,
                          color: index == currentIndex
                              ? Palette.facebookBlue
                              : Colors.black45,
                        ),
                      ),
                    ),
                  )
                  .values
                  .toList(),
            ),
          ),
          Expanded(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                InkWell(
                  onTap: () {},
                  child: Row(
                    children: [
                      ProfileCircleAvatar(imageUrl: currentUser.imageUrl),
                      SizedBox(width: 8.0),
                      Text(
                        currentUser.name,
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
                CircleButton(
                  icon: Icon(Icons.search),
                  onPressed: search,
                  iconSize: 30.0,
                ),
                CircleButton(
                  icon: Icon(MdiIcons.facebookMessenger),
                  onPressed: goToMessenger,
                  iconSize: 30.0,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
