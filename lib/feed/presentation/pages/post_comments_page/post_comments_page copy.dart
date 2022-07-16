import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/app_bar/post_comments_app_bar_widget.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/contents-composite/actions/post_comment_actions_widget.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/contents-composite/actions/post_comment_response_actions_widget.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/contents-composite/post_comment.dart';

class PostCommentsPageCopy extends StatefulWidget {
  const PostCommentsPageCopy({Key? key}) : super(key: key);

  @override
  State<PostCommentsPageCopy> createState() => _PostCommentsPageState();
}

class _PostCommentsPageState extends State<PostCommentsPageCopy> {
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
            PostCommentWidget(post: post)
                .buildContent(PostCommentActionsWidget(post: post)),
            ...buildComments(post.comments),
          ],
        ),
      ),
    );
  }

  List<Widget> buildComments(List<PostEntity> responses) {
    List<Widget> commentsWidget = responses
        .map(
          (eachPost) => PostCommentWidget(post: eachPost)
              .buildContent(PostCommentResponseActionsWidget(post: eachPost)),
        )
        .toList();

    return commentsWidget;
  }

  List<Widget> buildCommentsResponses(List<PostEntity> responses) {
    List<PostEntity> visitingNodes = [];
    List<PostEntity> finalNodes = [];
    List<Widget> responsesWidget;

    visitingNodes.add(responses.first);

    while (visitingNodes.isNotEmpty) {
      PostEntity post = visitingNodes.removeAt(0);

      print('adicionando ao final nodes ${post.description}');
      finalNodes.add(post);

      visitingNodes.addAll(post.comments);
    }

    responsesWidget = finalNodes
        .map((e) => PostCommentWidget(post: e)
            .buildContent(PostCommentResponseActionsWidget(post: post)))
        .toList();

    return responsesWidget;
  }
}
