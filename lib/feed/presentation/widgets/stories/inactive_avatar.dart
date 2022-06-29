import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/widgets/stories/abstract_avatar.dart';

class InactiveAvatar extends AbstractAvatar {
  InactiveAvatar.large() {
    size = 35;
  }

  InactiveAvatar.small() {
    size = 30;
  }

  @override
  Widget build() {
    return Padding(
      padding: EdgeInsets.all(4.0),
      child: CircleAvatar(
        backgroundImage: const AssetImage('assets/perfil-instagram.png'),
        radius: size,
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
