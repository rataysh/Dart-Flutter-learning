import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../classes/AllTheme.dart';


myPortraitView(sizeGridPortrait) {
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
    myAllTheme.listAllTheme[0].allElements.length,
    itemBuilder: (_, index) => Container(
      width: 50,
      height: 50,
      decoration: const BoxDecoration(
        color: Colors.white,
      ),
      alignment: Alignment.center,
      child: Text(
          myAllTheme.listAllTheme[0].allElements[index]),
    ),
  );
}
