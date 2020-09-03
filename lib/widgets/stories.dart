import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({this.currentUser, this.stories});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      color: Colors.white,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return StoryCard(isAddStory: true, currentUser: currentUser);
          }
          return Padding(
            padding: const EdgeInsets.only(left: 10.0),
            child: StoryCard(story: stories[index - 1]),
          );
        },
      ),
    );
  }
}
