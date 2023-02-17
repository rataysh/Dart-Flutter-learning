import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../const/styles.dart';
import '../../../generated/locale_keys.g.dart';

frontSide(List arguments, context, bool checkViewFlag) {

  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width / 1.2,
    height: MediaQuery.of(context).size.height / 1.45,
    decoration: checkViewFlag
        ? boxDecorationRulesContainerAfterCheck
        : boxDecorationRulesContainer,

    child: Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // SizedBox(height: 5,),
        Text(
          arguments[1],
          style: textStyleHeaderNewGameRules,
          textAlign: TextAlign.center,
        ),
        Text(
          LocaleKeys.newGameCardFrontSide.tr(),
          style: textStyleDescriptionRules,
          textAlign: TextAlign.center,
        ),
      ],
    ),
  );
}

// frontSideAfter(List arguments, context) {
//   return Container(
//     alignment: Alignment.center,
//     width: MediaQuery.of(context).size.width / 1.2,
//     height: MediaQuery.of(context).size.height / 1.5,
//     decoration: boxDecorationRulesContainerAfterCheck,
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         // SizedBox(height: 5,),
//         Text(
//           arguments[1],
//           style: textStyleHeaderNewGameRules,
//           textAlign: TextAlign.center,
//         ),
//         const Text(
//           '''Нажми на карточку,
// чтобы узнать слово,
// и передай следующему игроку''',
//           style: textStyleDescriptionRules,
//           textAlign: TextAlign.center,
//         ),
//       ],
//     ),
//   );
// }
