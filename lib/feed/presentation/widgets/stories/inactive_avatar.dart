import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/widgets/stories/abstract_avatar.dart';

class InactiveAvatar extends AbstractAvatar {
  @override
  Widget build() {
    return const Padding(
      padding: EdgeInsets.all(4.0),
      child: CircleAvatar(
        backgroundImage: AssetImage('assets/perfil-instagram.png'),
        radius: 35,
      ),
    );
  }

  @override
  BoxDecoration buildBorder() {
    return const BoxDecoration(
      shape: BoxShape.circle,
      border: Border.fromBorderSide(
        BorderSide(color: Color.fromARGB(255, 77, 76, 76)),
      ),
    );
  }
}
