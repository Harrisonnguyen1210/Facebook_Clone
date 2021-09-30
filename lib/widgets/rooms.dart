import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Rooms extends StatelessWidget {
  final List<User> onlineUsers;

  Rooms({required this.onlineUsers});

  @override
  Widget build(BuildContext context) {
    final _isDesktop = Responsive.isDesktop(context);

    return Card(
      elevation: _isDesktop ? 1.0 : 0.0,
      margin: EdgeInsets.symmetric(horizontal: 0.0),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(_isDesktop ? 10.0 : 0.0),
      ),
      child: Container(
        height: 70.0,
        child: ListView.builder(
          padding: EdgeInsets.symmetric(horizontal: 4.0, vertical: 10.0),
          scrollDirection: Axis.horizontal,
          itemCount: 1 + onlineUsers.length,
          itemBuilder: (context, index) {
            if (index == 0) {
              return Padding(
                padding: EdgeInsets.symmetric(horizontal: 8.0),
                child: RoomButton(),
              );
            }
            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4.0),
              child: ProfileCircleAvatar(
                imageUrl: onlineUsers[index - 1].imageUrl,
                isActive: true,
              ),
            );
          },
        ),
      ),
    );
  }
}
