import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/abstract_avatar.dart';

class ActiveAvatar extends AbstractAvatar {
  ActiveAvatar.large() {
    size = 34;
  }

  ActiveAvatar.small() {
    size = 16;
  }

  @override
  Widget build() {
    return Padding(
      padding: const EdgeInsets.all(1.5),
      child: CircleAvatar(
        backgroundColor: Colors.black,
        radius: size,
        child: CircleAvatar(
          backgroundImage: const AssetImage('assets/perfil-instagram.png'),
          radius: size! - 3,
        ),
      ),
    );
  }

  @override
  BoxDecoration buildBorder() {
    return BoxDecoration(
      shape: BoxShape.circle,
      gradient: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Colors.red,
          Colors.yellow[200]!,
          Colors.purple.shade900,
          Colors.red,
        ],
      ),
    );
  }
}
