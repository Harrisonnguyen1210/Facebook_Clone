import 'package:cached_network_image/cached_network_image.dart';
import 'package:facebook_clone/config/palette.dart';
import 'package:facebook_clone/models/models.dart';
import 'package:facebook_clone/widgets/profile_circle_avatar.dart';
import 'package:flutter/material.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';

class PostTile extends StatelessWidget {
  final Post post;

  const PostTile({Key key, this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: ProfileCircleAvatar(imageUrl: post.user.imageUrl),
            title: Text(
                post.user.name,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            subtitle: Row(
              children: [
                Text(
                  post.timeAgo,
                  style: TextStyle(color: Colors.grey),
                ),
                SizedBox(width: 5.0),
                Container(
                  height: 5,
                  width: 5,
                  decoration:
                      BoxDecoration(shape: BoxShape.circle, color: Colors.grey),
                ),
                SizedBox(width: 5.0),
                Icon(MdiIcons.earth, size: 15.0, color: Colors.grey),
              ],
            ),
            trailing: Icon(Icons.more_horiz),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
            child: Text(post.caption),
          ),
          post.imageUrl != null
              ? CachedNetworkImage(
                  imageUrl: post.imageUrl,
                  height: 300,
                  width: double.infinity,
                  fit: BoxFit.cover,
                )
              : SizedBox.shrink(),
          Padding(
            padding: EdgeInsets.only(left: 6.0, right: 16.0),
            child: Row(
              children: [
                Expanded(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      FlatButton.icon(
                        onPressed: () {},
                        icon: Container(
                          height: 20.0,
                          width: 20.0,
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Palette.facebookBlue,
                          ),
                          child: Icon(
                            MdiIcons.thumbUp,
                            color: Colors.white,
                            size: 12.0,
                          ),
                        ),
                        label: Text(
                          post.likes.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.grey[600],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Text(
                  post.comments.toString() + ' ' + 'Comments',
                  style: TextStyle(color: Colors.grey[600]),
                ),
                SizedBox(width: 5.0),
                Text(
                  post.shares.toString() + ' ' + 'Shares',
                  style: TextStyle(color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 2.0,
            height: 5.0,
            color: Palette.scaffold,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FlatButton.icon(
                icon: Icon(MdiIcons.thumbUpOutline, color: Colors.grey),
                label: Text('Like'),
                onPressed: () {},
              ),
              FlatButton.icon(
                icon: Icon(MdiIcons.commentOutline, color: Colors.grey),
                label: Text('Comment'),
                onPressed: () {},
              ),
              FlatButton.icon(
                icon: Icon(MdiIcons.shareOutline, color: Colors.grey),
                label: Text('Share'),
                onPressed: () {},
              ),
            ],
          ),
          Container(height: 10.0, color: Palette.scaffold),
        ],
      ),
    );
  }
}
