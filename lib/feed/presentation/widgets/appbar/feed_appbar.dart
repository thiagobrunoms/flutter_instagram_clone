import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/widgets/appbar/instagram_logo_menu/instagram_logo_menu.dart';

class FeedAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FeedAppBar({Key? key}) : super(key: key);

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return AppBar(
      backgroundColor: Theme.of(context).backgroundColor,
      leading: const InstagramLogoMenu(),
      leadingWidth: size.width * 0.40,
      actions: [
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.add_box_outlined),
          iconSize: size.height * 0.035,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.favorite_border),
          iconSize: size.height * 0.035,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.chat_bubble_outline),
          iconSize: size.height * 0.035,
        ),
      ],
    );
  }
}
