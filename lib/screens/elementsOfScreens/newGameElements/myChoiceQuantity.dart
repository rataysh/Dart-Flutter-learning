// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../const/styles.dart';


myChoiceQuantity(quantity, minusPlayers, plusPlayers) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      quantity == 3
          ? const IconButton(
        onPressed: null,
        iconSize: 40,
        color: colorDisabledButton,
        icon: Icon(
          Icons.remove,
        ),
      )
          : IconButton(
        onPressed: () {
          minusPlayers();
        },
        iconSize: 40,
        color: colorBackgroundButton,
        icon: const Icon(
          Icons.remove,
        ),
      ),
      Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          '$quantity',
          style: textStyleEachThemeElements,
        ),
      ),
      quantity == 12
          ? const IconButton(
        iconSize: 40,
        color: colorDisabledButton,
        icon: Icon(
          Icons.add,
        ),
        onPressed: null,
      )
          : IconButton(
        iconSize: 40,
        color: colorBackgroundButton,
        icon: const Icon(
          Icons.add,
        ),
        onPressed: () {
          plusPlayers();
        },
      ),
    ],
  );
}