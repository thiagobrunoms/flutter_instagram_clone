import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/widgets/nicknames/nickname_widget.dart';

class InactiveStyleNickname extends AbstractNickname {
  InactiveStyleNickname(String nickname, double size)
      : super(nickname: nickname, size: size);

  @override
  TextStyle buildTextStyle() {
    return TextStyle(color: Colors.grey, fontSize: size);
  }
}
