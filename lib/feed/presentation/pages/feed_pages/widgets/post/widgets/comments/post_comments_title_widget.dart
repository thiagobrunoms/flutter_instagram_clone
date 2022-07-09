import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/domain/post_entity.dart';

class CommentsTitleWidget extends StatelessWidget {
  final PostEntity post;

  const CommentsTitleWidget({Key? key, required this.post}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, 'toPostComments', arguments: post);
      },
      child: const Text(
        'Ver todos os 255 comentários',
        style: TextStyle(color: Colors.grey),
      ),
    );
  }
}
