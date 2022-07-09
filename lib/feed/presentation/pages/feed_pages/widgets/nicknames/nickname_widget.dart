import 'package:flutter/material.dart';

abstract class AbstractNickname {
  double size;
  String nickname;

  AbstractNickname({required this.nickname, required this.size});

  Widget create() {
    return Text(
      nickname,
      style: buildTextStyle(),
    );
  }

  TextStyle buildTextStyle();
}
