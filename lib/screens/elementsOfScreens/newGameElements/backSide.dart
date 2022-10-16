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
    width: MediaQuery.of(context).size.width / 1.2,
    height: MediaQuery.of(context).size.height / 1.5,
    decoration:boxDecorationRulesContainer,
    child: index == rabbitFlag
        ? newGameRoleImageYouAreRabbit(context)
        : Text(
            '$tempWord',
            style: textStyleHeaderNewGameRules,
          ),
  );
}
