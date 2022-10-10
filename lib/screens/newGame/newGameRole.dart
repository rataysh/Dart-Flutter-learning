import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../classes/AllTheme.dart';
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
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final argumentsListFromQuantity =
        ModalRoute.of(context)?.settings.arguments as List;
    final Map argumentsPlayersName = argumentsListFromQuantity[0];
    final int argumentsThemeNumber = argumentsListFromQuantity[1];

    int randomElementOfList = Random().nextInt(
        myAllTheme.listAllTheme[argumentsThemeNumber].allElements.length);

    int rabbitFlag = Random().nextInt(argumentsPlayersName.length);

    return Material(
      child: Stack(
        children: [
          MainBackground(),
          Swiper(
              control: const SwiperControl(
                color: colorBackgroundButton,
              ),
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              layout: SwiperLayout.TINDER,
              itemWidth: 300,
              itemHeight: 500,
              itemCount: argumentsPlayersName.length,
              itemBuilder: (_, index) => FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: frontSide(index, argumentsPlayersName),
                    back: backSide(
                        index,
                        argumentsThemeNumber,
                        randomElementOfList,
                        rabbitFlag), //_backSide(index, argumentsThemeNumber),
                  )),
          Container(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              style: mainMenuButtonStyle,
              onPressed: () {
                Navigator.pushNamed(context, '/newGameFinal');
                    // arguments: [quantity, themeNumberForShow]);
              },
              child: const Text(
                'TEST',
                style: mainMenuButtonTextStyle,
              ),
            ),
          ),
          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}