import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/active_avatar.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/inactive_avatar.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/contents/username_and_description_widget.dart';

abstract class AbstractPostCommentsWidget {
  PostEntity post;

  AbstractPostCommentsWidget({required this.post});

  Widget create() {
    return Padding(
      padding: const EdgeInsets.all(6.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Flexible(
            flex: 1,
            child: post.user.hasActiveStories
                ? ActiveAvatar(user: post.user, size: 22).create()
                : InactiveAvatar(user: post.user, size: 22).create(),
          ),
          Flexible(
            flex: 5,
            child: Padding(
              padding: const EdgeInsets.only(left: 6.0, right: 6.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UsernameAndDescriptionWidget(post: post),
                  buildTimeAndActions()
                ],
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: IconButton(
              onPressed: () {},
              icon: Icon(
                size: 18,
                Icons.favorite_border,
                color: Colors.grey,
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget buildTimeAndActions();
}
