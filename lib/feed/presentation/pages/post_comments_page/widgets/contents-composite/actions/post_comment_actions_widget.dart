import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/shared/utils/parsers.dart';

class PostCommentActionsWidget extends StatefulWidget {
  final PostEntity post;
  const PostCommentActionsWidget({Key? key, required this.post})
      : super(key: key);

  @override
  State<PostCommentActionsWidget> createState() =>
      _PostCommentActionsWidgetState();
}

class _PostCommentActionsWidgetState extends State<PostCommentActionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          '${DateTimeParsers.fromDateTimeToShortStrDayOrWeek(widget.post.date)} - ${widget.post.modified ? 'Editado' : ''}',
          style: const TextStyle(color: Colors.grey, fontSize: 10),
        ),
      ],
    );
  }
}
