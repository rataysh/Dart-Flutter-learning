import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../classes/AllTheme.dart';
import 'newGameFinalViewContainer.dart';


myPortraitView(sizeGridPortrait, int indexTheme) {
  return GridView.builder(
    shrinkWrap: true,
    physics: const NeverScrollableScrollPhysics(),
    gridDelegate:
    SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2,
      crossAxisSpacing: 5,
      mainAxisSpacing: 5,
      childAspectRatio: sizeGridPortrait,
    ),
    itemCount:
    myAllTheme.languageTheme[indexTheme].allElements.length,
    itemBuilder: (_, index) => myBothViewContainer(index, indexTheme),
  );
}
