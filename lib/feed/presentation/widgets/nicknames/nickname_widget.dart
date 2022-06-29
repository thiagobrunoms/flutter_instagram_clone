import 'package:flutter/material.dart';

abstract class AbstractNickname {
  String nickname;

  AbstractNickname({required this.nickname});

  Widget create() {
    return Text(
      nickname,
      style: buildTextStyle(),
    );
  }

  TextStyle buildTextStyle();
}
