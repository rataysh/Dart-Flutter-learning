import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../const/slyles.dart';



frontSide(List arguments, context) {
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width/1.15,
    height: MediaQuery.of(context).size.height/1.35,
    decoration: BoxDecoration(
      gradient: const LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomRight,
          colors: [Colors.white24, colorBackgroundButton]),
      borderRadius: BorderRadius.all(Radius.circular(30.0)),

      border: Border.all(
        style: BorderStyle.solid,
        width: 2,
        color: colorBackgroundButton,
      ),
      color: colorDisabledButton,
    ),
    child: Text(
      arguments[1],
      style: textStyleEachThemeHeader,
    ),
  );
}