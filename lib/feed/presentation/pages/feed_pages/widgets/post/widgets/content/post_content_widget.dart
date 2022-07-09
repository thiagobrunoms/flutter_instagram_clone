import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';

class PostContentWidget extends StatefulWidget {
  final PostEntity post;
  const PostContentWidget({Key? key, required this.post}) : super(key: key);

  @override
  State<PostContentWidget> createState() => _PostContentWidgetState();
}

class _PostContentWidgetState extends State<PostContentWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.only(top: 10),
        child: Image.asset(widget.post.postContent));
  }
}
