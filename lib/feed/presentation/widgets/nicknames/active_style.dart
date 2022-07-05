import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/widgets/nicknames/nickname_widget.dart';

class ActiveStyleNickname extends AbstractNickname {
  ActiveStyleNickname(String nickname, double size)
      : super(nickname: nickname, size: size);

  @override
  TextStyle buildTextStyle() {
    return TextStyle(
        color: Colors.white, fontSize: size, fontWeight: FontWeight.bold);
  }
}
