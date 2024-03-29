import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../addThemeScreen.dart';
import 'package:lern_base/screens/themeScreen.dart';

class ChangeThemeButton extends StatelessWidget {

  // Тут нужно изменить функцию
  void chekStandartThemeFunc() {
    dataChekStandartThemeFlag == true
        ? print('Страндартную тему изменять нельзя')
        : print('Эту тему можно изменить');
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.all(10.0),
      child: IconButton(
        iconSize: 45,
        color: Colors.white,
        icon: const Icon(
          Icons.edit,
        ),
        tooltip: "Изменить тему",
        // hoverColor: Colors.black,
        // splashRadius: 100,
        // splashColor: Colors.blue,
        // highlightColor: Colors.red,
        onPressed: () {
          chekStandartThemeFunc();
        },
      ),
    );
  }
}
