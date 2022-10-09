import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../classes/AllTheme.dart';
import '../../../const/slyles.dart';

backSide(int index, int argumentsThemeNumber, int randomElementOfList,
    int rabbitFlag) {
  var tempWord = myAllTheme
      .listAllTheme[argumentsThemeNumber].allElements[randomElementOfList];
  return Container(
    alignment: Alignment.center,
    width: 300,
    height: 500,
    decoration: BoxDecoration(
      gradient: const LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomRight,
          colors: [colorDisabledButton, colorBackgroundButton]),
      borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      border: Border.all(
        style: BorderStyle.solid,
        width: 4,
        color: Colors.black,
      ),
      color: colorDisabledButton,
    ),
    child: index == rabbitFlag
        ? const Text(
            'Ты заяц',
            style: eachThemeHeaderTextStyle,
          )
        : Text(
            '$tempWord',
            style: eachThemeHeaderTextStyle,
          ),
  );
}
