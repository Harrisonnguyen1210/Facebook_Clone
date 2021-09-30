import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class StoryCard extends StatelessWidget {
  final User? currentUser;
  final Story? story;

  const StoryCard({
    this.currentUser,
    this.story,
  }) : assert((currentUser != null || story != null));

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(15.0),
            child: Image.network(
              currentUser != null ? currentUser!.imageUrl : story!.imageUrl,
              fit: BoxFit.cover,
              width: 110.0,
              height: double.infinity,
            ),
          ),
          Container(
            height: double.infinity,
            width: 110.0,
            decoration: BoxDecoration(
                boxShadow: Responsive.isDesktop(context)
                    ? [
                        BoxShadow(
                          color: Colors.black26,
                          offset: Offset(0, 2),
                          blurRadius: 4.0,
                        ),
                      ]
                    : null,
                borderRadius: BorderRadius.circular(15.0)),
          ),
          Positioned(
            top: 8.0,
            left: 8.0,
            child: currentUser != null
                ? Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.circle,
                    ),
                    child: IconButton(
                      icon: Icon(Icons.add),
                      color: Palette.facebookBlue,
                      onPressed: () {},
                    ),
                  )
                : ProfileCircleAvatar(
                    imageUrl: story!.user.imageUrl,
                  ),
          ),
          Positioned(
            bottom: 8.0,
            left: 8.0,
            right: 4.0,
            child: Text(
              currentUser != null ? 'Add to story' : story!.user.name,
              style: TextStyle(
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ],
      ),
    );
  }
}
