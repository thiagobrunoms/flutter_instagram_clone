import 'package:flutter/material.dart';
import 'package:instagram_clone/feed/presentation/widgets/nicknames/nickname_widget.dart';

class ActiveStyleNickname extends AbstractNickname {
  ActiveStyleNickname(String nickname) : super(nickname: nickname);

  @override
  TextStyle buildTextStyle() {
    return const TextStyle(color: Colors.white, fontSize: 14);
  }
}
