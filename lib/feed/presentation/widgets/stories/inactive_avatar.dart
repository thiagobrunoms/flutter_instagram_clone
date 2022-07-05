import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/widgets/stories/abstract_avatar.dart';

class InactiveAvatar extends AbstractAvatar {
  InactiveAvatar.large() {
    size = 33;
  }

  InactiveAvatar.small() {
    size = 27;
  }

  @override
  Widget build() {
    return Padding(
      padding: const EdgeInsets.all(1.5),
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
