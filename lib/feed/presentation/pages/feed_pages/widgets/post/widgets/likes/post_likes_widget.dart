import 'package:flutter/material.dart';

class PostLikesWidget extends StatefulWidget {
  const PostLikesWidget({Key? key}) : super(key: key);

  @override
  State<PostLikesWidget> createState() => _PostLikesWidgetState();
}

class _PostLikesWidgetState extends State<PostLikesWidget> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      '2.150 curtidas',
      style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
