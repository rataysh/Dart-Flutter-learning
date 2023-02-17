import 'package:flutter/cupertino.dart';

rulesMainContainerImage(double screenWidth, String path) {
  return Container(
    height: 180,
    alignment: Alignment.bottomCenter,
    child: Image.asset(
      alignment: Alignment.bottomCenter,
      path,
      fit: BoxFit.contain,
    ),
  );
}
