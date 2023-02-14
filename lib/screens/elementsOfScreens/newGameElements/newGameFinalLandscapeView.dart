import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../classes/AllTheme.dart';
import 'newGameFinalViewContainer.dart';

myLandscapeView(sizeGridLandscape, int indexTheme) {
  return GridView.builder(
      shrinkWrap: true,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 4,
        crossAxisSpacing: 5,
        mainAxisSpacing: 5,
        childAspectRatio: sizeGridLandscape,
      ),
      itemCount:
          myAllTheme.languageTheme[indexTheme].allElements.length,
      itemBuilder: (_, index) => myBothViewContainer(index, indexTheme)
  );
}
