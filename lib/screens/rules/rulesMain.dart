import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lern_base/const/rulesAll.dart';
import 'package:lern_base/screens/elementsOfScreens/background.dart';
import '../../classes/AllTheme.dart';
import '../../const/orientation.dart';
import '../../const/ref.dart';
import '../../const/slyles.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/newGameElements/myChoiceQuantity.dart';
import '../elementsOfScreens/newGameElements/myChoiceTheme.dart';
import '../elementsOfScreens/newGameElements/listThemeChoice.dart';

class RulesMain extends StatefulWidget {
  const RulesMain({Key? key}) : super(key: key);

  @override
  State<RulesMain> createState() => _RulesMainState();
}

class _RulesMainState extends State<RulesMain> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    // print(screenWidth);
    // print(screenHeight);

    setState(() {
      myOrientationPortrait();
    });
    return Material(
      child: Stack(
        children: [
          // BackgroundWithNoImage(),
          MainBackground(),
          Center(
            child: Padding(
              padding: EdgeInsets.fromLTRB(screenWidth / 40, screenHeight / 8,
                  screenWidth / 40, screenHeight / 3),
              child: Container(
                alignment: Alignment.center,
                width: screenWidth * 0.85,
                height: screenHeight,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    Text(rulesMeaning.header,
                    style: textStyleHeaderRules,),
                    Text(rulesMeaning.description,
                      style: textStyleDescriptionRules,),
                  ],
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              // height: screenHeight,
              width: screenWidth/2.2,
              alignment: Alignment.bottomCenter,
              child: Image.asset(
                alignment: Alignment.bottomCenter,
                pathHandRabImage,
                fit: BoxFit.scaleDown,
                // scale: 3.3,
              ),
            ),
          ),
          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}
