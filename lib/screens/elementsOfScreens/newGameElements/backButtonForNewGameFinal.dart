import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import '../../../const/durationVibration.dart';
import '../../../const/orientation.dart';
import '../../../const/slyles.dart';


myBackButtonForNewGameFinal(context) {
  return Container(
    alignment: Alignment.topLeft,
    // padding: const EdgeInsets.all(10.0),
    margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
    child: IconButton(
      iconSize: 40,
      color: colorBackgroundButton,
      icon: const Icon(
        Icons.arrow_back,
      ),
      onPressed: () {
        Vibration.vibrate(duration: durationVibration);
        Navigator.pop(context);
        myOrientationPortrait();
      },
    ),
  );
}
