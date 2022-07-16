import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/app_bar/post_comments_app_bar_widget.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/comments_responses/comments_responses_widget.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/contents/post_comments_widget.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/contents/post_description_widget.dart';

class PostCommentsPage extends StatefulWidget {
  const PostCommentsPage({Key? key}) : super(key: key);

  @override
  State<PostCommentsPage> createState() => _PostCommentsPageState();
}

class _PostCommentsPageState extends State<PostCommentsPage> {
  late PostEntity post;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();

    post = ModalRoute.of(context)?.settings.arguments as PostEntity;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PostCommentsAppBarWidget(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            PostDescriptionCommentsWidget(
              post: post,
            ).create(),
            ...post.comments.map((eachPostComment) =>
                CommentsResponsesWidget(post: eachPostComment)),
          ],
        ),
      ),
    );
  }
}



// ...post.comments.map((eachPost) => Align(
//               alignment: Alignment.topRight,
//               child: PostCommentWidget(post: eachPost).buildContent(
//                   PostCommentResponseActionsWidget(post: eachPost)),
//             ),)
