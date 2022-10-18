// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../classes/AllTheme.dart';
import '../../../const/slyles.dart';


myBothViewContainer(int index, int indexTheme) {
  return Container(
    decoration: BoxDecoration(
      // color: Colors.white,
      borderRadius: const BorderRadius.all(Radius.circular(18.0)),
      border: Border.all(
        color: const Color(0xFFD1E8B3),
        width: 2,
      ),
      boxShadow: const [
        BoxShadow(
          color: Color(0xFFD1E8B3),
          offset: Offset(3.0, 4.0),
          blurRadius: 1.0,
        ),
      ],
      color: Colors.white70,
    ),
    alignment: Alignment.center,
    child: Text(
      myAllTheme.listAllTheme[indexTheme].allElements[index],
      textAlign: TextAlign.center,
      style: textStyleWordsInFinalCard,),
  );
}

