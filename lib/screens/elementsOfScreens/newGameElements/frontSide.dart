import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../const/slyles.dart';



frontSide(int index, Map arguments) {
  var tempName;
  index++;
  tempName = arguments["$index"];
  return Container(
    alignment: Alignment.center,
    width: 300,
    height: 500,
    decoration: BoxDecoration(
      gradient: const LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomRight,
          colors: [colorDisabledButton, colorBackgroundButton]),
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      border: Border.all(
        style: BorderStyle.solid,
        width: 4,
        color: Colors.black,
      ),
      color: colorDisabledButton,
    ),
    child: Text(
      '$tempName',
      style: textStyleEachThemeHeader,
    ),
  );
}