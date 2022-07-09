import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/pages/post_comments_page/widgets/post_comments_app_bar_widget.dart';

class PostCommentsPage extends StatefulWidget {
  const PostCommentsPage({Key? key}) : super(key: key);

  @override
  State<PostCommentsPage> createState() => _PostCommentsPageState();
}

class _PostCommentsPageState extends State<PostCommentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const PostCommentsAppBarWidget(),
    );
  }
}
