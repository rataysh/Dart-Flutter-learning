import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../classes/AllTheme.dart';
import '../../const/orientation.dart';
import '../../const/slyles.dart';
import '../elementsOfScreens/newGameElements/backButtonForNewGameFinal.dart';
import '../elementsOfScreens/newGameElements/newGameFinalPortrainView.dart';
import '../elementsOfScreens/newGameElements/rotationButton.dart';

class NewGameFinal extends StatelessWidget {
  const NewGameFinal({super.key});

  @override
  Widget build(BuildContext context) {
    // final argumentsThemeNumber =
    //     ModalRoute.of(context)?.settings.arguments as int;
    int argumentsThemeNumber = 2;

    // Блок определения высоты/широты экрана и адаптивной настройки размера элементов сетки
    var gridWidth = MediaQuery.of(context).size.width;
    var gridHeight = MediaQuery.of(context).size.height;
    var sizeGridPortrait;
    var sizeGridLandscape;
    gridHeight > 680
        ? sizeGridPortrait = (gridWidth / 2) / (gridHeight / 10)
        : sizeGridPortrait = (gridWidth / 2) / (gridHeight / 11);
    sizeGridLandscape = ((gridWidth-newGameFinalHeightSizedBox)/4)/(newGameFinalHeightSizedBox*0.8);

    _screenRotationChange() {
      MediaQuery.of(context).orientation == Orientation.portrait
          ? myOrientationLandscape()
          : myOrientationPortrait();
      print(gridHeight);
    }

    return Material(
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
                        alignment: Alignment.bottomCenter,
                        child: Text(
                          myAllTheme.listAllTheme[argumentsThemeNumber].name,
                          style: eachThemeHeaderTextStyle,
                        ),
                      ),
                      myRotationButton(_screenRotationChange),
                    ],
                  ),
                ),
                OrientationBuilder(
                  builder: (context, orientation) => MediaQuery.of(context)
                              .orientation ==
                          Orientation.portrait
                      ? myPortraitView(sizeGridPortrait, argumentsThemeNumber)
                      : GridView.builder(
                          shrinkWrap: true,
                          // physics: const NeverScrollableScrollPhysics(),
                          gridDelegate:
                              SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 4,
                            crossAxisSpacing: 5,
                            mainAxisSpacing: 5,
                            childAspectRatio: sizeGridLandscape,
                          ),
                          itemCount: myAllTheme
                              .listAllTheme[argumentsThemeNumber]
                              .allElements
                              .length,
                          itemBuilder: (_, index) => Container(
                                width: 50,
                                height: 50,
                                decoration: const BoxDecoration(
                                  color: Colors.white,
                                ),
                                alignment: Alignment.center,
                                child: Text(myAllTheme
                                    .listAllTheme[argumentsThemeNumber]
                                    .allElements[index]),
                              )),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
