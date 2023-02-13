import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:vibration/vibration.dart';
import '../../../const/SharedPreferenceConst.dart';
import '../../../const/styles.dart';

class HomeButton extends StatelessWidget {
  final String title;
  final String navigatorPath;

  HomeButton({required this.title, required this.navigatorPath});


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(6.0),
      child: ElevatedButton(
        style: mainMenuButtonStyle,
        onPressed: () {
          Vibration.vibrate(duration: durationVibration);
          Navigator.pushNamed(context, navigatorPath);
        },
        child: Text(
          title,
          style: mainMenuButtonTextStyle,
        ),
      ),
    );
  }
}
