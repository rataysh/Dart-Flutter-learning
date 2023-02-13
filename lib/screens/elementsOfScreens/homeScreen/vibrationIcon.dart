// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibration/vibration.dart';
import '../../../const/SharedPreferenceConst.dart';
import '../../../const/orientation.dart';
import '../../../const/styles.dart';

class VibrationIcon extends StatefulWidget {
  // final IconData iconView;
  VibrationIcon({Key? key}) : super(key: key);

  @override
  State<VibrationIcon> createState() => _VibrationIconState();
}

class _VibrationIconState extends State<VibrationIcon> {
  void _pressIconVib() async {
    durationVibration == 0 ? durationVibration = 50 : durationVibration = 0;
    Vibration.vibrate(duration: durationVibration);
    myOrientationPortrait();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 25.0,
      left: 10.0,
      child: IconButton(
        iconSize: 36,
        color: colorRulesHeaderText,
        icon: Icon(
          durationVibration == 0
              ? Icons.notifications_off
              : Icons.notifications,
        ),
        onPressed: () {
          _pressIconVib();
        },
      ),
    );
  }
}
