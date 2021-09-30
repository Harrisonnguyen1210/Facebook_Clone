import 'package:facebook_clone/config/constants.dart';
import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final User currentUser;

  PostContainer({required this.currentUser});

  void _selectLive() {}

  @override
  Widget build(BuildContext context) {
    final _isDesktop = Responsive.isDesktop(context);

    return Card(
      margin: EdgeInsets.symmetric(horizontal: 0.0),
      elevation: _isDesktop ? 1.0 : 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_isDesktop ? 10.0 : 0.0),
      ),
      child: Container(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 8, 16, 4),
              child: Row(
                children: [
                  ProfileCircleAvatar(imageUrl: currentUser.imageUrl),
                  SizedBox(width: 10.0),
                  Flexible(
                    child: TextFormField(
                      decoration: InputDecoration(
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: Colors.grey),
                          ),
                          focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(25.0),
                            borderSide: BorderSide(color: Palette.facebookBlue),
                          ),
                          contentPadding:
                              EdgeInsets.fromLTRB(15.0, 2.0, 10.0, 2.0),
                          hintText: Constants.sCreatePostPlaceholder),
                      onSaved: (value) {},
                    ),
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
                  TextButton.icon(
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
                  TextButton.icon(
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
                  TextButton.icon(
                    icon: Icon(Icons.location_on, color: Colors.purpleAccent),
                    label: Text('Check In'),
                    onPressed: _selectLive,
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
