import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../const/slyles.dart';


myRotationButton(func) {
  return Container(
    alignment: Alignment.bottomRight,
    // padding: const EdgeInsets.all(8.0),
    margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
    child: IconButton(
      iconSize: 40,
      color: colorBackgroundButton,
      icon: const Icon(
        Icons.screen_rotation,
      ),
      onPressed: () {
        func();
      },
    ),
  );
}
