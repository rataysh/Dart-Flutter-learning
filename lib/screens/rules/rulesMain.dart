import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lern_base/screens/elementsOfScreens/background.dart';
import '../../classes/AllTheme.dart';
import '../../const/orientation.dart';
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
    setState(() {
      myOrientationPortrait();
    });
    return Material(
      child: Stack(
        children: [
          // BackgroundWithNoImage(),
          MainBackground(),

          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}
