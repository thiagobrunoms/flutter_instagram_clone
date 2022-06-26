import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/widgets/instagram_logo_menu/instagram_logo_menu.dart';

class FeedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FeedAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).backgroundColor,
      leading: const InstagramLogoMenu(),
      leadingWidth: 200,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_box_outlined),
          iconSize: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
          iconSize: 30,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chat_bubble_outline),
          iconSize: 30,
        ),
      ],
    );
  }
}
