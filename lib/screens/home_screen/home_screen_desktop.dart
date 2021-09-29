import 'package:facebook_clone/data/data.dart';
import 'package:facebook_clone/widgets/widgets.dart';
import 'package:flutter/material.dart';

class HomeScreenDesktop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Container(
            height: double.infinity,
          ),
        ),
        Spacer(),
        Container(
          width: 600.0,
          child: CustomScrollView(
            slivers: [
              SliverPadding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
                sliver: SliverToBoxAdapter(
                  child: Stories(currentUser: currentUser, stories: stories),
                ),
              ),
              SliverToBoxAdapter(
                child: PostContainer(currentUser: currentUser),
              ),
              SliverPadding(
                padding: EdgeInsets.fromLTRB(0.0, 10.0, 0.0, 5.0),
                sliver: SliverToBoxAdapter(
                  child: Rooms(onlineUsers: onlineUsers),
                ),
              ),
              SliverPadding(
                padding: EdgeInsets.fromLTRB(0.0, 5.0, 0.0, 0.0),
                sliver: SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (context, index) => PostTile(
                      post: posts[index],
                    ),
                    childCount: posts.length,
                  ),
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Expanded(
          child: Container(
            height: double.infinity,
          ),
        )
      ],
    );
  }
}
