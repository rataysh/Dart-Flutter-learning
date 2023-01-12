// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import '../../../const/durationVibration.dart';
import '../../../const/orientation.dart';
import '../../../const/styles.dart';

class VibrationIcon extends StatefulWidget {
  const VibrationIcon({super.key});

  @override
  State<VibrationIcon> createState() => _VibrationIconState();
}

class _VibrationIconState extends State<VibrationIcon> {
  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 25.0,
      right: 10.0,
      child:IconButton(
        iconSize: 35,
        color: colorRulesHeaderShadowText,
        icon: Icon(
            durationVibration == 0
                ? Icons.notifications_off
                : Icons.notifications
        ),
        onPressed: () {
          Vibration.vibrate(duration: durationVibration);
          myOrientationPortrait();
          setState(() {
            durationVibration == 0
                ? durationVibration = 50
                : durationVibration = 0;
          });
          // print(durationVibration);
        },
      ),
    );
  }
}

