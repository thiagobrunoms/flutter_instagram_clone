import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/active_avatar.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/inactive_avatar.dart';

class PostDescriptionWidget extends StatelessWidget {
  final PostEntity post;

  const PostDescriptionWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        post.user.hasActiveStories
            ? ActiveAvatar(user: post.user, size: 25).create()
            : InactiveAvatar(user: post.user, size: 25).create()
      ],
    );
  }
}
