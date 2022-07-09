import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/pages/feed_pages/widgets/stories/abstract_avatar.dart';
import 'package:instagram_clone/shared/domain/user_entity.dart';

class InactiveAvatar extends AbstractAvatar {
  InactiveAvatar({required UserEntity user, required double size})
      : super(user: user, size: size);

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
