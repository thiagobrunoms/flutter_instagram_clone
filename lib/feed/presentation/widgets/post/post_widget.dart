import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:instagram_clone/feed/presentation/widgets/post/widgets/actions/post_actions_widget.dart';
import 'package:instagram_clone/feed/presentation/widgets/post/widgets/comments/post_comments_title_widget.dart';
import 'package:instagram_clone/feed/presentation/widgets/post/widgets/content/post_content_widget.dart';
import 'package:instagram_clone/feed/presentation/widgets/post/widgets/description/post_description.dart';
import 'package:instagram_clone/feed/presentation/widgets/post/widgets/likes/post_likes_widget.dart';
import 'package:instagram_clone/feed/presentation/widgets/post/widgets/post_timeout.dart';
import 'package:instagram_clone/feed/presentation/widgets/post/widgets/top_post/top_post_widget.dart';

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
      children: const [
        TopPostWidget(),
        PostContentWidget(),
        PostActionsWidget(),
        PostLikesWidget(),
        PostDescriptionWidget(),
        CommentsTitleWidget(),
        PostTimeoutWidget()
      ],
    );
  }
}
