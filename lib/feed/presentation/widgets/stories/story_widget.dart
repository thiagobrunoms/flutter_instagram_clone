import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/story_entity.dart';
import 'package:instagram_clone/feed/presentation/widgets/nicknames/nickname_widget.dart';
import 'package:instagram_clone/feed/presentation/widgets/stories/abstract_avatar.dart';

class StoryWidget extends StatelessWidget {
  final AbstractNickname nickname;
  final AbstractAvatar avatar;

  const StoryWidget({Key? key, required this.avatar, required this.nickname})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        avatar.create(),
        nickname.create(),
      ],
    );
  }
}
