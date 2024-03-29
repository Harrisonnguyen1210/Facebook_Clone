import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class Stories extends StatelessWidget {
  final User currentUser;
  final List<Story> stories;

  const Stories({required this.currentUser, required this.stories});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220.0,
      color: Responsive.isMobile(context)
          ? Colors.white
          : Theme.of(context).scaffoldBackgroundColor,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 10.0),
        scrollDirection: Axis.horizontal,
        itemCount: stories.length + 1,
        itemBuilder: (context, index) {
          if (index == 0) {
            return StoryCard(currentUser: currentUser);
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
