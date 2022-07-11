import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/post/widgets/actions/post_actions_widget.dart';

import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/post/widgets/comments/post_comments_title_widget.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/post/widgets/content/post_content_widget.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/post/widgets/description/post_description.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/post/widgets/likes/post_likes_widget.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/post/widgets/post_timeout.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/post/widgets/top_post/top_post_widget.dart';

class PostWidget extends StatefulWidget {
  final PostEntity post;
  const PostWidget({Key? key, required this.post}) : super(key: key);

  @override
  State<PostWidget> createState() => _PostWidgetState();
}

class _PostWidgetState extends State<PostWidget> {
  bool seeMore = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        TopPostWidget(post: widget.post),
        PostContentWidget(
          post: widget.post,
        ),
        const PostActionsWidget(),
        const PostLikesWidget(),
        PostDescriptionWidget(
          post: widget.post,
        ),
        CommentsTitleWidget(
          post: widget.post,
        ),
        PostTimeoutWidget(post: widget.post)
      ],
    );
  }
}
