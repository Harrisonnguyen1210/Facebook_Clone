import 'package:facebook_clone/config/palette.dart';
import 'package:flutter/material.dart';

class ProfileCircleAvatar extends StatelessWidget {
  final String imageUrl;
  final bool isActive;

  const ProfileCircleAvatar({required this.imageUrl, this.isActive = false});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CircleAvatar(
          radius: 25.0,
          backgroundColor: Palette.facebookBlue,
          child: CircleAvatar(
            radius: 23.0,
            backgroundImage: NetworkImage(imageUrl),
          ),
        ),
        isActive
            ? Positioned(
                bottom: 0.0,
                right: 0.0,
                child: CircleAvatar(
                  radius: 6.0,
                  backgroundColor: Palette.online,
                ),
              )
            : SizedBox.shrink()
      ],
    );
  }
}
