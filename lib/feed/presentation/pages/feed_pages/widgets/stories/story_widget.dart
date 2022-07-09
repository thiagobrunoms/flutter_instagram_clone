import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/nicknames/nickname_widget.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/abstract_avatar.dart';

class StoryWidget extends StatelessWidget {
  final AbstractNickname nickname;
  final AbstractAvatar avatar;

  const StoryWidget({Key? key, required this.avatar, required this.nickname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      // mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        avatar.create(),
        const SizedBox(
          height: 5,
        ),
        nickname.create(),
      ],
    );
  }
}
