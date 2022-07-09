import 'package:flutter/material.dart';

class CommentsTitleWidget extends StatelessWidget {
  const CommentsTitleWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Text(
      'Ver todos os 255 comentários',
      style: TextStyle(color: Colors.grey),
    );
  }
}
