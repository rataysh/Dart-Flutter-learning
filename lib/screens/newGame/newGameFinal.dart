import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../const/orientation.dart';
import '../../const/slyles.dart';
import '../elementsOfScreens/backButton.dart';

class NewGameFinal extends StatelessWidget {
  const NewGameFinal({super.key});

  @override
  Widget build(BuildContext context) {
    myOrientationLandscape();
    return Material(
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: colorBackgroundMain,
            ),
            child: Center(child: Text('My test text')),
          ),
          MyBackButton(),
        ],
      ),
    );
  }
}
