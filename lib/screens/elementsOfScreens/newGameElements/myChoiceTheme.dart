import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../const/slyles.dart';


myChoiceTheme(data, myIconThemeButton, miniViewAllTheme, randomTheme) {
  return Container(
    padding: const EdgeInsets.all(3.0),
    alignment: Alignment.center,
    width: 350,
    height: 50,
    decoration: BoxDecoration(
      border: Border.all(
        color: colorBorderForAddTheme,
        width: 2,
      ),
      borderRadius: const BorderRadius.all(Radius.circular(15.0)),
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        const SizedBox(
          width: 10,
        ),
        Flexible(
          flex: 7,
          child: Container(
            alignment: Alignment.centerLeft,
            child: Text(
              data,
              style: eachThemeHeaderTextStyle,
              overflow: TextOverflow.ellipsis,
            ),
          ),
        ),
        Flexible(
          flex: 1,
          child: myIconThemeButton(Icons.dehaze, miniViewAllTheme),
        ),
        Flexible(
          flex: 1,
          child: myIconThemeButton(Icons.sync, randomTheme),
        ),
      ],
    ),
  );
}