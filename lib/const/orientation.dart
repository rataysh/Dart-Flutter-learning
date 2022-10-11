import 'package:flutter/services.dart';

myOrientationPortrait() {
  SystemChrome.setPreferredOrientations([
    // DeviceOrientation.landscapeLeft,
    // DeviceOrientation.landscapeRight,
    DeviceOrientation.portraitDown,
    DeviceOrientation.portraitUp,
  ]);
}

myOrientationLandscape() {
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
    // DeviceOrientation.portraitDown,
    // DeviceOrientation.portraitUp,
  ]);
}
