import 'package:flutter/material.dart';

class PostTimeoutWidget extends StatefulWidget {
  const PostTimeoutWidget({Key? key}) : super(key: key);

  @override
  State<PostTimeoutWidget> createState() => _PostTimeoutWidgetState();
}

class _PostTimeoutWidgetState extends State<PostTimeoutWidget> {
  @override
  Widget build(BuildContext context) {
    return const Text(
      'Há 3 horas',
      style: TextStyle(color: Colors.grey, fontSize: 10),
    );
  }
}
