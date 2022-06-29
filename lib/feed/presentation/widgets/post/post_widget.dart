import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/widgets/nicknames/active_style.dart';
import 'package:instagram_clone/feed/presentation/widgets/stories/active_avatar.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 13.0),
      child: Column(
        children: [
          _buildTopPost(),
          _buildVerticalSpace(),
          Image.asset('assets/post-test.png'),
          _buildActions(),
        ],
      ),
    );
  }

  Widget _buildTopPost() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              ActiveAvatar.small().create(),
              _buildHorizontalSpace(),
              ActiveStyleNickname('thiagodesales').create(),
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

  Widget _buildActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(
          child: Row(
            children: [
              IconButton(
                icon: _buildIcon(Icons.favorite_border),
                onPressed: () {},
              ),
              _buildHorizontalSpace(),
              IconButton(
                icon: _buildIcon(Icons.mode_comment_outlined),
                onPressed: () {},
              ),
              _buildHorizontalSpace(),
              IconButton(
                icon: _buildIcon(Icons.send),
                onPressed: () {},
              ),
            ],
          ),
        ),
        SizedBox(
          width: 40,
          child: IconButton(
            icon: _buildIcon(
              Icons.bookmark_border,
            ),
            onPressed: () {},
          ),
        )
      ],
    );
  }

  Widget _buildIcon(IconData iconData) => Icon(
        iconData,
        color: Colors.white,
        size: 32,
      );

  Widget _buildHorizontalSpace() => const SizedBox(
        width: 10,
      );

  Widget _buildVerticalSpace() => const SizedBox(
        height: 10,
      );
}
