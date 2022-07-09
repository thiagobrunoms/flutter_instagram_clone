import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/nicknames/active_style.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/active_avatar.dart';

class TopPostWidget extends StatefulWidget {
  final PostEntity post;

  const TopPostWidget({Key? key, required this.post}) : super(key: key);

  @override
  State<TopPostWidget> createState() => _TopPostWidgetState();
}

class _TopPostWidgetState extends State<TopPostWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              ActiveAvatar(user: widget.post.user, size: 17).create(),
              SizedBox(height: MediaQuery.of(context).size.width * 0.03),
              ActiveStyleNickname(widget.post.user.name, 15).create(),
            ],
          ),
        ),
        SizedBox(
            width: 40,
            child: IconButton(
              icon: const Icon(
                Icons.more_vert,
                color: Colors.white,
              ),
              onPressed: () {},
            )),
      ],
    );
  }
}
