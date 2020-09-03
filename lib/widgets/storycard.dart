import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final bool isAddStory;
  final User currentUser;
  final Story story;

  const StoryCard({
    this.isAddStory = false,
    this.currentUser,
    this.story,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              isAddStory ? currentUser.imageUrl : story.imageUrl,
              fit: BoxFit.cover,
              width: 110.0,
              height: double.infinity,
            ),
          ),
          Positioned(
            top: 4.0,
            left: 4.0,
            child: ProfileCircleAvatar(
              imageUrl: isAddStory ? currentUser.imageUrl : story.user.imageUrl,
            ),
          ),
          Positioned(
            bottom: 10,
            left: 4.0,
            right: 4.0,
            child: Text(
              isAddStory ? currentUser.name : story.user.name,
              style: TextStyle(color: Colors.white),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
