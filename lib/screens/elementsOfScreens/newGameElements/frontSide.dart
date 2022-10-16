import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../const/slyles.dart';

frontSide(List arguments, context) {
  return Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width / 1.2,
    height: MediaQuery.of(context).size.height / 1.5,
    decoration: boxDecorationRulesContainer,
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
        const Text(
          '''Нажми на карточку, 
чтобы узнать слово, 
и передай следующему игроку''',
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
//     width: MediaQuery.of(context).size.width/1.15,
//     height: MediaQuery.of(context).size.height/1.35,
//     decoration: BoxDecoration(
//       borderRadius: BorderRadius.all(Radius.circular(30.0)),
//       border: Border.all(
//         style: BorderStyle.solid,
//         width: 2,
//         color: colorRulesHeaderSwadowText,
//       ),
//       boxShadow: const [
//         BoxShadow(
//           color: colorRulesHeaderSwadowText,
//           offset: Offset(4.0, 4.0),
//           blurRadius: 5.0,
//         ),
//       ],
//       // gradient: const LinearGradient(
//       //     begin: Alignment.center,
//       //     end: Alignment.bottomRight,
//       //     colors: [Colors.white, colorBackgroundButton]),
//       color: colorDisabledButton,
//     ),
//     child: Column(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.center,
//       children: [
//         SizedBox(height: 5,),
//         Text(
//           arguments[1],
//           style: textStyleEachThemeHeader,
//         ),
//         Text(
//           'Смахни карточку и передай другому игроку',
//           style: textStyleDescriptionRules,
//         ),
//       ],
//     ),
//   );
// }
