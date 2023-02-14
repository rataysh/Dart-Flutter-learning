// import 'package:flutter/cupertino.dart';
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
        child: Stack(
          fit: StackFit.passthrough,
          children: [
            Container(
              decoration: const BoxDecoration(
                color: colorBackgroundMain,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: newGameFinalHeightSizedBox,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        myBackButtonForNewGameFinal(context),
                        Container(
                          width: gridWidth / 2,
                          alignment: Alignment.bottomCenter,
                          child: Text(
                            myAllTheme.languageTheme[argumentsThemeNumber].name,
                            style: textStyleNewGameFinalHeader,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        myRotationButton(_screenRotationChange),
                        myHomeButton(context),
                      ],
                    ),
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
            ),
          ],
        ),
      ),
    );
  }
}
