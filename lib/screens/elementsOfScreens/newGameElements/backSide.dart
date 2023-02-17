import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../classes/AllTheme.dart';
import '../../../const/styles.dart';
import '../../../generated/locale_keys.g.dart';
import 'newGameRoleImageYouAreRabbit.dart';

backSide(int index, int argumentsThemeNumber, int randomElementOfList,
    int rabbitFlag, context) {
  var tempWord = myAllTheme
      .languageTheme[argumentsThemeNumber].allElements[randomElementOfList];
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width / 1.2,
    height: MediaQuery.of(context).size.height / 1.45,
    decoration: boxDecorationRulesContainer,
    child: index == rabbitFlag
        ? Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              newGameRoleImageYouAreRabbit(context),
              Text(
                LocaleKeys.newGameYouAreRab.tr(),
                style: textStyleHeaderNewGameRules,
                textAlign: TextAlign.center,
              ),
            ],
          )
        : Text(
            '$tempWord',
            style: textStyleHeaderNewGameRules,
            textAlign: TextAlign.center,
          ),
  );
}
