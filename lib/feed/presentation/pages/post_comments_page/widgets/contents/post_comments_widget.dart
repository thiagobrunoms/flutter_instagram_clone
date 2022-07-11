import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/contents/abstract_post_comments_content.dart';
import 'package:flutter/material.dart';
import 'package:instagram_clone/shared/utils/parsers.dart';

class PostCommentsWidget extends AbstractPostCommentsWidget {
  final TextStyle defaultTextStyle = const TextStyle(color: Colors.grey);

  PostCommentsWidget({required PostEntity post}) : super(post: post);

  @override
  Widget buildTimeAndActions() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          flex: 2,
          child: Text(
            DateTimeParsers.fromDateTimeToShortStrDayOrWeek(post.date),
            style: defaultTextStyle,
          ),
        ),
        post.numberOfLikes > 0
            ? Flexible(
                flex: 2,
                child: Text(
                  '${post.numberOfLikes} curtidas',
                  style: defaultTextStyle,
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
              style: defaultTextStyle,
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
              style: defaultTextStyle,
            ),
          ),
        ),
      ],
    );
  }
}
