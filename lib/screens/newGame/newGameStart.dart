import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../classes/AllTheme.dart';
import '../../const/slyles.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/background.dart';
import '../elementsOfScreens/newGameElements/myChoiceQuantity.dart';
import '../elementsOfScreens/newGameElements/myChoiceTheme.dart';
import '../elementsOfScreens/newGameElements/listThemeChoice.dart';

class NewGameStart extends StatefulWidget {
  const NewGameStart({Key? key}) : super(key: key);

  @override
  State<NewGameStart> createState() => _NewGameStartState();
}

class _NewGameStartState extends State<NewGameStart> {
  int quantity = 3;
  var themeNumberForShow = 0;

  @override
  void initState() {
    super.initState();
  }

  void plusPlayers() {
    setState(() {
      quantity == 12 ? quantity = 12 : quantity += 1;
    });
  }

  void minusPlayers() {
    setState(() {
      quantity == 3 ? quantity = 3 : quantity -= 1;
    });
  }

  _randomTheme() {
    return themeNumberForShow =
        Random().nextInt(myAllTheme.listAllTheme.length);
  }

  _miniViewAllTheme() {
    return showModalBottomSheet(
      // isScrollControlled: true,
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(30),
        ),
      ),
      context: context,
      builder: (context) => ListThemeChoice(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          MainBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text('Выберите количество игроков',
                  style: eachThemeHeaderTextStyle),
              myChoiceQuantity(quantity, minusPlayers, plusPlayers),
              const Text('Выберите тему', style: eachThemeHeaderTextStyle),
              myChoiceTheme(myAllTheme.listAllTheme[themeNumberForShow].name,
                  _myIconThemeButton, _miniViewAllTheme, _randomTheme),
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: ElevatedButton(
                  style: mainMenuButtonStyle,
                  onPressed: () async {
                    Navigator.pushNamed(context, '/newGameQuantity',
                        arguments: [quantity, themeNumberForShow]);
                  },
                  child: const Text(
                    'Далее',
                    style: mainMenuButtonTextStyle,
                  ),
                ),
              ),
            ],
          ),
          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }

  _myIconThemeButton(icon, func) {
    return IconButton(
        padding: EdgeInsets.all(1.0),
        alignment: Alignment.centerRight,
        color: colorBackgroundButton,
        onPressed: () async {
          final result = await func();
          setState(() {
            themeNumberForShow = result;
          });
        },
        icon: Icon(icon));
  }
}