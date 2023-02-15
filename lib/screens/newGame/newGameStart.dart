import 'dart:math';
// import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../generated/locale_keys.g.dart';
import '../../screens/elementsOfScreens/background.dart';
import 'package:vibration/vibration.dart';
import '../../classes/AllTheme.dart';
import '../../const/SharedPreferenceConst.dart';
import '../../const/orientation.dart';
import '../../const/styles.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/newGameElements/myChoiceQuantity.dart';
import '../elementsOfScreens/newGameElements/myChoiceTheme.dart';
import '../elementsOfScreens/newGameElements/listThemeChoice.dart';

class NewGameStart extends StatefulWidget {
  const NewGameStart({Key? key}) : super(key: key);

  @override
  State<NewGameStart> createState() => _NewGameStartState();
}

class _NewGameStartState extends State<NewGameStart> {
  int quantity = 3;
  var themeNumberForShow = 0;

  @override
  void initState() {
    super.initState();
  }

  void plusPlayers() {
    Vibration.vibrate(duration: durationVibration);
    setState(() {
      quantity == 12 ? quantity = 12 : quantity += 1;
    });
  }

  void minusPlayers() {
    Vibration.vibrate(duration: durationVibration);
    setState(() {
      quantity == 3 ? quantity = 3 : quantity -= 1;
    });
  }

  _randomTheme() {
    return themeNumberForShow =
        Random().nextInt(myAllTheme.languageTheme.length);
  }

  _miniViewAllTheme() {
    return showModalBottomSheet(
      // isDismissible: false,
      // isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) => ListThemeChoice(),
    );
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      myOrientationPortrait();
    });
    return Material(
      child: Stack(
        children: [
          MainBackground(),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(LocaleKeys.newGameNumbersPlayers.tr(),
                        style: textStyleNewGameStartHeader,
                    textAlign: TextAlign.center,),
                    const SizedBox(height: 25),
                    myChoiceQuantity(quantity, minusPlayers, plusPlayers),
                  ],
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(LocaleKeys.newGameSelectTopic.tr(), style: textStyleNewGameStartHeader),
                    const SizedBox(height: 25),
                    myChoiceTheme(myAllTheme.languageTheme[themeNumberForShow].name,
                        _myIconThemeButton, _miniViewAllTheme, _randomTheme),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(7.0),
                  child: ElevatedButton(
                    style: mainMenuButtonStyle,
                    onPressed: () async {
                      Vibration.vibrate(duration: durationVibration);
                      Navigator.pushNamed(context, '/newGameQuantity',
                          arguments: [quantity, themeNumberForShow]);
                    },
                    child: Text(
                      LocaleKeys.newGameNext.tr(),
                      style: mainMenuButtonTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }

  _myIconThemeButton(icon, func) {
    return IconButton(
        padding: EdgeInsets.all(1.0),
        alignment: Alignment.centerRight,
        color: colorBackgroundButton,
        onPressed: () async {
          Vibration.vibrate(duration: durationVibration);
          final result = await func();
          setState(() {
            themeNumberForShow = result;
          });
        },
        icon: Icon(icon));
  }
}
