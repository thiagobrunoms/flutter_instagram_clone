import 'package:flutter/material.dart';
import 'package:instagram_clone/shared/domain/user_entity.dart';

abstract class AbstractAvatar {
  final UserEntity user;
  double size;

  AbstractAvatar({required this.user, required this.size});

  Widget create() {
    return Container(
      decoration: buildBorder(),
      child: build(),
    );
  }

  Widget build();

  BoxDecoration buildBorder();
}
