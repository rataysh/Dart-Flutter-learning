

import 'package:flutter/cupertino.dart';

rulesMainContainerImage(double screenWidth, String path) {
  return Center(
    child: Container(
// height: screenHeight,
      width: screenWidth / 3,
      alignment: Alignment.bottomCenter,
      child: Image.asset(
        alignment: Alignment.bottomCenter,
        path,
        fit: BoxFit.scaleDown,
// scale: 3.3,
      ),
    ),
  );
}
