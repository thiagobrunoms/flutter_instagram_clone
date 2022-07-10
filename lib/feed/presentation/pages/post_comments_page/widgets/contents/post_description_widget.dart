import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/contents/abstract_post_comments_content.dart';
import 'package:instagram_clone/shared/utils/parsers.dart';

class PostDescriptionCommentsWidget extends AbstractPostCommentsWidget {
  PostDescriptionCommentsWidget({required PostEntity post}) : super(post: post);

  @override
  Widget buildTimeAndActions() {
    return Row(
      children: [
        Text(
          '${DateTimeParsers.fromDateTimeToShortStrDayOrWeek(post.date)} - ${post.modified ? 'Editado' : ''}',
          style: const TextStyle(color: Colors.grey, fontSize: 10),
        ),
      ],
    );
  }
}
