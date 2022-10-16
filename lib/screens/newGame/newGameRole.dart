import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../classes/AllTheme.dart';
import '../../const/orientation.dart';
import '../../const/slyles.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/background.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
                    front: frontSide(element, context),
                    back: backSide(element[0], argumentsThemeNumber,
                        randomElementOfList, rabbitFlag, context),
                  ),
                );
              }).toList(),
            ),
          ),
          Container(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              style: mainMenuButtonStyle,
              onPressed: () {
                print(rabbitFlag);
                print(argumentsPlayersNameList);
                // print(argumentsPlayersNameList.reversed);
                // Navigator.pushNamed(context, '/newGameFinal',
                //     arguments: argumentsThemeNumber);
              },
              child: const Text(
                'TEST',
                style: mainMenuButtonTextStyle,
              ),
            ),
          ),
          MyBackButton(),
          // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}

// Swiper(
// control: const SwiperControl(
// color: colorBackgroundButton,
// ),
// // controller: _controller,
// // index: 0,
// loop: false,
// scrollDirection: Axis.horizontal,
// physics: const BouncingScrollPhysics(),
// // physics: NeverScrollableScrollPhysics(),
// layout: SwiperLayout.TINDER,
// itemWidth: MediaQuery.of(context).size.width / 1.1,
// itemHeight: MediaQuery.of(context).size.height / 1.3,
// itemCount: argumentsPlayersName.length,
// itemBuilder: (_, index) {
// return GestureDetector(
// child: Dismissible(
// key: ValueKey(Random().toString()),
// onDismissed: (directional) {
// setState(() {
// frontSide(index, argumentsPlayersName, context)
//     .remove(index);
// backSide(index, argumentsThemeNumber, randomElementOfList,
// rabbitFlag)
//     .remove(index);
// });
// },
// child: FlipCard(
// direction: FlipDirection.HORIZONTAL,
// front: frontSide(index, argumentsPlayersName, context),
// back: backSide(index, argumentsThemeNumber,
// randomElementOfList, rabbitFlag),
// onFlip: () {
// print(rabbitFlag);
// },
// ),
// ),
// );
// },
// ),
