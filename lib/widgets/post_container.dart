import 'package:facebook_clone/config/constants.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:flutter/material.dart';

class PostContainer extends StatelessWidget {
  final User currentUser;

  PostContainer({this.currentUser});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      color: Colors.white,
      child: Column(
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 25.0,
                backgroundImage: NetworkImage(currentUser.imageUrl),
              ),
              SizedBox(width: 10.0),
              Text(Constants.sCreatePostPlaceholder, style: TextStyle(color: Colors.grey),),
            ],
          )
        ],
      ),
    );
  }
}
