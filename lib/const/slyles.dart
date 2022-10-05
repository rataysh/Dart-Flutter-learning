import 'package:flutter/material.dart';
import 'package:flutter/src/material/input_border.dart';

// Цвета
const colorBackgroundMain = Color(0xFFEAFED0); // Главный цвет
const colorBackgroundButton = Color(0xFF3EE3A8); //Цвет кнопок
const colorDisabledButton = Color(0xFF9ee2c9); //Цвет Неактивных кнопок

// Стили
// Кнопки главного меню
final ButtonStyle mainMenuButtonStyle = ElevatedButton.styleFrom(
  primary: colorBackgroundButton,
  fixedSize: const Size(200, 45),
  side: const BorderSide(
    color: Color(0xFF43CD9C),
    width: 2.0,
    style: BorderStyle.solid,
  ),
  padding: const EdgeInsets.symmetric(horizontal: 5.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
);

// Текст кнопок главного меню И меню ТЕМЫ
const mainMenuButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 20.0,
  fontWeight: FontWeight.w800,
  fontFamily: 'AbhayaLibre',
  shadows: [
    Shadow(
      offset: Offset(0.5, 0.5),
      blurRadius: 0.5,
      color: Colors.green,
    ),
  ],
);

// Кнопки меню ТЕМЫ
final ButtonStyle themeMenuButtonStyle = ElevatedButton.styleFrom(
  minimumSize: Size(200, 45),
  primary: colorBackgroundButton,
  side: const BorderSide(
    color: Color(0xFF43CD9C),
    // width: 2.0,
    style: BorderStyle.none,
  ),
  padding: const EdgeInsets.symmetric(horizontal: 5.0),
  shape: const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(15.0)),
  ),
);

// Паддинг для второстепенных экранов, которые сохроняют главную тему
const mySecondaryScreensPadding = EdgeInsets.fromLTRB(5, 140, 5, 140);
const myEachThemeScreensPadding = EdgeInsets.fromLTRB(5, 210, 5, 140);

// Стиль рамки выделения при создании новой темы
const colorBorderForAddTheme = Color(0xFFFFE27D);
const InputBorder myBorderStyleForAddTheme = OutlineInputBorder(
  borderSide: BorderSide(
    color: colorBorderForAddTheme,
    width: 2,
  ),
  borderRadius: BorderRadius.all(Radius.circular(15.0)),
);

// Текст каждого слова в теме
const eachThemeTextStyle = TextStyle(
  color: Color(0xFF9b8134),
  fontSize: 20.0,
  fontWeight: FontWeight.w800,
  fontFamily: 'AbhayaLibre',
  // shadows: [
  //   Shadow(
  //     offset: Offset(0.5, 1.5),
  //     blurRadius: 1.0,
  //     color: Colors.green,
  //   ),
  // ],
);

// Текст заголовка в теме
const eachThemeHeaderTextStyle = TextStyle(
  color: Color(0xFF8c6e1c),
  fontSize: 25.0,
  fontWeight: FontWeight.w800,
  fontFamily: 'AbhayaLibre',
  // shadows: [
  //   Shadow(
  //     offset: Offset(0.5, 1.5),
  //     blurRadius: 1.0,
  //     color: Colors.green,
  //   ),
  // ],
);