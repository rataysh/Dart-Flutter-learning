import 'dart:math';
// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../classes/AllTheme.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/MainBackground.dart';
import 'package:flip_card/flip_card.dart';
import '../elementsOfScreens/newGameElements/backSide.dart';
import '../elementsOfScreens/newGameElements/frontSide.dart';

class NewGameRole extends StatefulWidget {
  const NewGameRole({super.key});

  @override
  State<NewGameRole> createState() => _NewGameRoleState();
}

class _NewGameRoleState extends State<NewGameRole> {
  @override
  Widget build(BuildContext context) {
    final argumentsListFromQuantity =
        ModalRoute.of(context)?.settings.arguments as List;
    final Map argumentsPlayersNameMap = argumentsListFromQuantity[0];
    final int argumentsThemeNumber = argumentsListFromQuantity[1];

    int randomElementOfList = Random().nextInt(
        myAllTheme.languageTheme[argumentsThemeNumber].allElements.length);
    int rabbitFlag = (Random().nextInt(argumentsPlayersNameMap.length) + 1);

    List argumentsPlayersNameList = [];
    void _convertMapToList(argumentsPlayersNameMap) {
      List tempData;
      for (int i = 1; i < argumentsPlayersNameMap.length + 1; i++) {
        tempData = [];
        tempData = [i, argumentsPlayersNameMap['$i']];
        argumentsPlayersNameList.add(tempData);
      }
    }

    setState(() {
      _convertMapToList(argumentsPlayersNameMap);
    });

    _checkLastCard(index) {
      index == argumentsPlayersNameList.length
          ? Navigator.pushNamed(context, '/newGameFinal',
              arguments: argumentsThemeNumber)
          : null;
    }

    bool _checkViewFlag = false;

    return Material(
      child: Stack(
        children: [
          MainBackground(),
          Center(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: argumentsPlayersNameList.reversed.map((element) {
                return Dismissible(
                  key: ValueKey(element),
                  onDismissed: (direction) {
                    _checkLastCard(element[0]);
                    _checkViewFlag = false;
                  },
                  child: FlipCard(
                    onFlip: () {
                        _checkViewFlag = true;
                    },
                    alignment: Alignment.center,
                    direction: FlipDirection.HORIZONTAL,
                    front: frontSide(element, context, _checkViewFlag),
                    back: backSide(element[0], argumentsThemeNumber,
                        randomElementOfList, rabbitFlag, context),
                  ),
                );
              }).toList(),
            ),
          ),
          MyBackButton(),
          // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}
