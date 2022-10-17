import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import '../../../const/durationVibration.dart';
import '../../../const/slyles.dart';


myHomeButton(context) {
  return Container(
    alignment: Alignment.bottomRight,
    // padding: const EdgeInsets.all(5.0),
    margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
    child: IconButton(
      iconSize: 30,
      color: colorBackgroundButton,
      icon: const Icon(
        Icons.home,
      ),
      onPressed: () {
        Vibration.vibrate(duration: durationVibration);
        Navigator.pushNamed(context, '/');
      },
    ),
  );
}
