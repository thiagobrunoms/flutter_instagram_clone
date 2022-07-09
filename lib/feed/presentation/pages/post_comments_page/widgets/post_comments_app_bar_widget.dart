import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostCommentsAppBarWidget extends StatelessWidget
    implements PreferredSizeWidget {
  const PostCommentsAppBarWidget({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.black,
      title: const Text(
        'Comentários',
        style: TextStyle(color: Colors.white),
      ),
      actions: [
        IconButton(
            onPressed: () {}, icon: const Icon(FontAwesomeIcons.paperPlane))
      ],
    );
  }
}
