import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/nicknames/active_style.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/active_avatar.dart';

class TopPostWidget extends StatefulWidget {
  const TopPostWidget({Key? key}) : super(key: key);

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
              ActiveAvatar.small().create(),
              SizedBox(height: MediaQuery.of(context).size.width * 0.03),
              ActiveStyleNickname('thiago.desales', 15).create(),
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
