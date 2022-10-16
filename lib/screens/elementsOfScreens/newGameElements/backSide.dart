import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../classes/AllTheme.dart';
import '../../../const/slyles.dart';

backSide(int index, int argumentsThemeNumber, int randomElementOfList,
    int rabbitFlag, context) {
  var tempWord = myAllTheme
      .listAllTheme[argumentsThemeNumber].allElements[randomElementOfList];
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width/1.15,
    height: MediaQuery.of(context).size.height/1.35,
    decoration: BoxDecoration(
      // gradient: const LinearGradient(
      //     begin: Alignment.center,
      //     end: Alignment.bottomRight,
      //     colors: [colorDisabledButton, colorBackgroundButton]),
      borderRadius: const BorderRadius.all(Radius.circular(30.0)),
      border: Border.all(
        style: BorderStyle.solid,
        width: 4,
        color: Colors.black,
      ),
      color: colorDisabledButton,
    ),
    child: index == rabbitFlag
        ? Text(
            'Ты заяц',
            style: textStyleEachThemeHeader,
          )
        : Text(
            '$tempWord',
            style: textStyleEachThemeHeader,
          ),
  );
}
