import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/shared/utils/parsers.dart';

class PostTimeoutWidget extends StatefulWidget {
  final PostEntity post;
  const PostTimeoutWidget({Key? key, required, required this.post})
      : super(key: key);

  @override
  State<PostTimeoutWidget> createState() => _PostTimeoutWidgetState();
}

class _PostTimeoutWidgetState extends State<PostTimeoutWidget> {
  @override
  Widget build(BuildContext context) {
    return Text(
      DateTimeParsers.fromDateTimeToStrCompleteDate(widget.post.date),
      style: const TextStyle(color: Colors.grey, fontSize: 10),
    );
  }
}
