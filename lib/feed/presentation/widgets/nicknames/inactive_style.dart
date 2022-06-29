import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/widgets/nicknames/nickname_widget.dart';

class InactiveStyleNickname extends AbstractNickname {
  InactiveStyleNickname(String nickname) : super(nickname: nickname);

  @override
  TextStyle buildTextStyle() {
    return const TextStyle(color: Colors.grey);
  }
}
