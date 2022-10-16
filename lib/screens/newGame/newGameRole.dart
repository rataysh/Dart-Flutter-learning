import 'dart:math';
import 'package:flip_card/flip_card_controller.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../classes/AllTheme.dart';
import '../../const/slyles.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/background.dart';
import 'package:flip_card/flip_card.dart';
import '../elementsOfScreens/newGameElements/backSide.dart';
import '../elementsOfScreens/newGameElements/frontSide.dart';

class NewGameRole extends StatefulWidget {
  const NewGameRole({super.key});

  @override
  State<NewGameRole> createState() => _NewGameRoleState();
}

class _NewGameRoleState extends State<NewGameRole> {
  late FlipCardController _controller;

  @override
  void initState() {
    super.initState();
    _controller = FlipCardController();
  }

  @override
  Widget build(BuildContext context) {
    final argumentsListFromQuantity =
        ModalRoute.of(context)?.settings.arguments as List;
    final Map argumentsPlayersNameMap = argumentsListFromQuantity[0];
    final int argumentsThemeNumber = argumentsListFromQuantity[1];

    int randomElementOfList = Random().nextInt(
        myAllTheme.listAllTheme[argumentsThemeNumber].allElements.length);
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

    _chekLastCard(index) {
      index == argumentsPlayersNameList.length
          ? Navigator.pushNamed(context, '/newGameFinal',
              arguments: argumentsThemeNumber)
          : null;
    }

    bool _checkedCard = false;

    return Material(
      child: Stack(
        children: [
          MainBackground(),
          // GestureDetector(
          Center(
            child: Stack(
              alignment: AlignmentDirectional.center,
              children: argumentsPlayersNameList.reversed.map((element) {
                return Dismissible(
                  key: ValueKey(element),
                  onDismissed: (direction) {
                    _chekLastCard(element[0]);
                  },
                  child: FlipCard(
                    alignment: Alignment.center,
                    direction: FlipDirection.HORIZONTAL,
                    // controller: _controller,
                    // onFlip: () {
                    //   if (_controller.state!.isFront) {
                    //     print('TEST');
                    //     _checkedCard == true;
                    //     // _controller.toggleCard();
                    //   }
                    // },
                    front: frontSide(element, context),
                        // _checkedCard == true
                        //     ? frontSideAfter(element, context)
                        //     : frontSide(element, context),
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
