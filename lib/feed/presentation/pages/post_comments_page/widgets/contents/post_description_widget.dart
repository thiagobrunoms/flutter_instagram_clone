import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/nicknames/active_style.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/contents/abstract_post_comments_content.dart';

class PostDescriptionCommentsWidget extends AbstractPostCommentsWidget {
  PostDescriptionCommentsWidget({required PostEntity post}) : super(post: post);

  @override
  Widget build() {
    return Column(
      children: [
        RichText(
          text: TextSpan(
            text: post.user.name,
            children: [
              TextSpan(
                text: ' ${post.description}',
                style: const TextStyle(color: Colors.white),
              ),
            ],
            style: ActiveStyleNickname(post.user.name, 14).buildTextStyle(),
          ),
        ),
        const Text(
          '2d',
          style: TextStyle(color: Colors.grey, fontSize: 10),
        )
      ],
    );
  }
}
