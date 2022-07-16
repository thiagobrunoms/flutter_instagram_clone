import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/contents-composite/post_comment.dart';
import 'package:instagram_clone/shared/utils/parsers.dart';

class PostCommentResponseActionsWidget extends StatefulWidget {
  final PostEntity post;
  final TextStyle defaultTextStyle = const TextStyle(color: Colors.grey);

  const PostCommentResponseActionsWidget({Key? key, required this.post})
      : super(key: key);

  @override
  State<PostCommentResponseActionsWidget> createState() =>
      _PostCommentResponseActionsWidgetState();
}

class _PostCommentResponseActionsWidgetState
    extends State<PostCommentResponseActionsWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Flexible(
              flex: 2,
              child: Text(
                DateTimeParsers.fromDateTimeToShortStrDayOrWeek(
                    widget.post.date),
                style: widget.defaultTextStyle,
              ),
            ),
            widget.post.numberOfLikes > 0
                ? Flexible(
                    flex: 2,
                    child: Text(
                      '${widget.post.numberOfLikes} curtidas',
                      style: widget.defaultTextStyle,
                    ),
                  )
                : Container(),
            Flexible(
              flex: 2,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Responder',
                  overflow: TextOverflow.ellipsis,
                  style: widget.defaultTextStyle,
                ),
              ),
            ),
            Flexible(
              flex: 1,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'Enviar',
                  overflow: TextOverflow.ellipsis,
                  style: widget.defaultTextStyle,
                ),
              ),
            ),
          ],
        ),
        // ...widget.post.comments.map((e) => PostCommentWidget(post: e)
        //     .buildContent(PostCommentResponseActionsWidget(post: e)))
      ],
    );
  }
}
