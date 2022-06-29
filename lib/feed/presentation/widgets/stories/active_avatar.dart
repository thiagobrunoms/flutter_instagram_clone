import 'package:flutter/src/widgets/framework.dart';
import 'package:instagram_clone/feed/presentation/widgets/stories/abstract_avatar.dart';
import 'package:flutter/material.dart';

class ActiveAvatar extends AbstractAvatar {
  @override
  Widget build() {
    return const Padding(
      padding: EdgeInsets.all(1.5),
      child: CircleAvatar(
        backgroundColor: Colors.black,
        radius: 37,
        child: CircleAvatar(
          backgroundImage: AssetImage('assets/perfil-instagram.png'),
          radius: 32,
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

  @override
  Widget buildName(String name) {
    return Text(
      name,
      style: const TextStyle(color: Colors.white),
    );
  }
}
