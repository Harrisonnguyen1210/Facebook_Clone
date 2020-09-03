import 'package:facebook_clone/config/constants.dart';
import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final User currentUser;

  PostContainer({this.currentUser});

  void _selectLive() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
            child: Row(
              children: [
                ProfileCircleAvatar(imageUrl: currentUser.imageUrl),
                SizedBox(width: 10.0),
                Text(
                  Constants.sCreatePostPlaceholder,
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2,
            height: 10,
            color: Palette.scaffold,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FlatButton.icon(
                  icon: Icon(Icons.video_call, color: Colors.red),
                  label: Text('Live'),
                  onPressed: _selectLive,
                ),
                Container(
                  height: 30,
                  child: VerticalDivider(
                    color: Palette.scaffold,
                    thickness: 2,
                  ),
                ),
                FlatButton.icon(
                  icon: Icon(Icons.photo_library, color: Colors.green),
                  label: Text('Photo'),
                  onPressed: _selectLive,
                ),
                Container(
                  height: 30,
                  child: VerticalDivider(
                    color: Palette.scaffold,
                    thickness: 2,
                  ),
                ),
                FlatButton.icon(
                  icon: Icon(Icons.location_on, color: Colors.purpleAccent),
                  label: Text('Check In'),
                  onPressed: _selectLive,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
