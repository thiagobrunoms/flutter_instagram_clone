import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/widgets/nicknames/active_style.dart';
import 'package:instagram_clone/feed/presentation/widgets/post/description/post_description.dart';
import 'package:instagram_clone/feed/presentation/widgets/stories/active_avatar.dart';

class PostWidget extends StatefulWidget {
  const PostWidget({Key? key}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool seeMore = false;

  @override
  Widget build(BuildContext context) {
    print('rebuilding feed');
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _buildTopPost(),
        _buildVerticalSpace(),
        Image.asset('assets/post-test.png'),
        _buildActions(),
        _buildLikes(),
        const PostDescriptionWidget(),
      ],
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
              ActiveStyleNickname('thiago.desales', 14).create(),
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
              IconButton(
                icon: _buildIcon(Icons.mode_comment_outlined),
                onPressed: () {},
              ),
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
        size: MediaQuery.of(context).size.height * 0.035,
      );

  Widget _buildHorizontalSpace() => SizedBox(
        width: MediaQuery.of(context).size.width * 0.03,
      );

  Widget _buildVerticalSpace() => const SizedBox(
        height: 10,
      );

  Widget _buildLikes() {
    return const Text(
      '2.150 curtidas',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
