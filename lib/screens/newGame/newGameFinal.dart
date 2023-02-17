import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import '../../classes/AllTheme.dart';
import '../../const/SharedPreferenceConst.dart';
import '../../const/orientation.dart';
import '../../const/styles.dart';
import '../elementsOfScreens/newGameElements/backButtonForNewGameFinal.dart';
import '../elementsOfScreens/newGameElements/myHomeButton.dart';
import '../elementsOfScreens/newGameElements/newGameFinalLandscapeView.dart';
import '../elementsOfScreens/newGameElements/newGameFinalPortrainView.dart';
import '../elementsOfScreens/newGameElements/rotationButton.dart';

class NewGameFinal extends StatelessWidget {
  const NewGameFinal({super.key});

  @override
  Widget build(BuildContext context) {
    final argumentsThemeNumber =
        ModalRoute.of(context)?.settings.arguments as int;
    // int argumentsThemeNumber = 2;

    // Блок определения высоты/широты экрана и адаптивной настройки размера элементов сетки
    var gridWidth = MediaQuery.of(context).size.width;
    var gridHeight = MediaQuery.of(context).size.height;
    var sizeGridPortrait;
    var sizeGridLandscape;
    gridHeight > 680
        ? sizeGridPortrait = (gridWidth / 2) / (gridHeight / 10)
        : sizeGridPortrait = (gridWidth / 2) / (gridHeight / 11.3);
    sizeGridLandscape = ((gridWidth - newGameFinalHeightSizedBox) / 4) /
        (newGameFinalHeightSizedBox * 0.8);

    _screenRotationChange() {
      MediaQuery.of(context).orientation == Orientation.portrait
          ? myOrientationLandscape()
          : myOrientationPortrait();
    }

    return WillPopScope(
      onWillPop: () async {
        Vibration.vibrate(duration: durationVibration);
        Navigator.pop(context);
        myOrientationPortrait();
        return false;
      },
      child: Material(
        color: colorBackgroundMain,
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    myBackButtonForNewGameFinal(context),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 30),
                        child: Text(
                          myAllTheme.languageTheme[argumentsThemeNumber].name,
                          textAlign: TextAlign.center,
                          maxLines: 2,
                          style: textStyleEachThemeElements,
                        ),
                      ),
                    ),
                    myRotationButton(_screenRotationChange),
                    myHomeButton(context),
                  ],
                ),
                OrientationBuilder(
                  builder: (context, orientation) => MediaQuery.of(context)
                              .orientation ==
                          Orientation.portrait
                      ? myPortraitView(sizeGridPortrait, argumentsThemeNumber)
                      : myLandscapeView(
                          sizeGridLandscape, argumentsThemeNumber),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
