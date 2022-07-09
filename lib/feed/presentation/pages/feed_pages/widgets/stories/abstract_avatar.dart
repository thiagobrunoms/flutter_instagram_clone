import 'package:flutter/material.dart';

abstract class AbstractAvatar {
  double? size;

  Widget create() {
    return Container(
      decoration: buildBorder(),
      child: build(),
    );
  }

  Widget build();

  BoxDecoration buildBorder();
}
