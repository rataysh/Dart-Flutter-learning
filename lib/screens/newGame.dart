import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'elementsOfScreens/backButton.dart';
import 'elementsOfScreens/background.dart';
import 'newGameStart.dart';

var dataKindOfTheme;
var dataChekStandartThemeFlag;

class NewGame extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          MainBackground(),
          AddNewPlayers(),
          // AddNewThemeButton(), Добавить потом, база уже есть
          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}
