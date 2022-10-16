import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../classes/AllTheme.dart';
import '../../../const/slyles.dart';
import 'newGameRoleImageYouAreRabbit.dart';

backSide(int index, int argumentsThemeNumber, int randomElementOfList,
    int rabbitFlag, context) {
  var tempWord = myAllTheme
      .listAllTheme[argumentsThemeNumber].allElements[randomElementOfList];
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width / 1.15,
    height: MediaQuery.of(context).size.height / 1.35,
    decoration:BoxDecoration(
      borderRadius: BorderRadius.all(Radius.circular(30.0)),
      border: Border.all(
        style: BorderStyle.solid,
        width: 7,
        color: Colors.black26,
      ),
      boxShadow: const [
        BoxShadow(
          color: colorRulesHeaderSwadowText,
          offset: Offset(4.0, 4.0),
          blurRadius: 7.0,
        ),
      ],
      gradient: const LinearGradient(
          begin: Alignment.center,
          end: Alignment.bottomCenter,
          colors: [Colors.white, Colors.tealAccent]),
      // color: Colors.tealAccent,
    ),
    child: index == rabbitFlag
        ? newGameRoleImageYouAreRabbit(context)
        : Text(
            '$tempWord',
            style: textStyleEachThemeHeader,
          ),
  );
}
