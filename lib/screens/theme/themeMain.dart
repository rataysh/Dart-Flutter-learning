// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import '../../classes/AllTheme.dart';
import '../../const/durationVibration.dart';
import '../../const/orientation.dart';
import '../../const/slyles.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/background.dart';


class ThemeMain extends StatefulWidget {
  @override
  State<ThemeMain> createState() => _ThemeMainState();
}

class _ThemeMainState extends State<ThemeMain> {
  @override
  Widget build(BuildContext context) {
    setState(() {
      myOrientationPortrait();
    });
    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView.builder(
            padding: mySecondaryScreensPadding,
            physics: const BouncingScrollPhysics(),
            itemCount: myAllTheme.listAllTheme.length,
            itemBuilder: (_, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    Vibration.vibrate(duration: durationVibration);
                    Navigator.pushNamed(context, '/themeEach',
                        arguments: index);
                  },
                  style: themeMenuButtonStyle,
                  child: Text(
                    myAllTheme.listAllTheme[index].name,
                    style: mainMenuButtonTextStyle,
                  ),
                ),
              ],
            ),
          ),
          // AddNewThemeButton(), Добавить потом, база уже есть
          MyBackButton(),
        ],
      ),
    );
  }
}
