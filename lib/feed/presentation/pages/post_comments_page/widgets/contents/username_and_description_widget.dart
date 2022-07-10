import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/nicknames/active_style.dart';

class UsernameAndDescriptionWidget extends StatelessWidget {
  final PostEntity post;
  const UsernameAndDescriptionWidget({Key? key, required this.post})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
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
    );
  }
}
