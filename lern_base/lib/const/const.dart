import 'package:flutter/material.dart';

// Цвета
const backgroundMain = Color(0xFFEAFED0); // Главный цвет

// Пути к картинкам
const String pathBackgroundImage = "assets/images/back.png";
const String pathCloudLeftImage = "assets/images/cloudLeft.png";
const String pathCloudRightImage = "assets/images/cloudRight.png";
const String pathNameImage = "assets/images/name.png";
const String pathBodyRabImage = "assets/images/bodyRab.png";

// Стили
// Кнопки главного меню
final ButtonStyle mainMenuButtonStyle = ElevatedButton.styleFrom(
  primary: const Color(0xFF3EE3A8),
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

// Текст кнопок главного меню
const mainMenuButtonTextStyle = TextStyle(
  fontSize: 20.0,
  fontWeight: FontWeight.w800,
  fontFamily: 'AbhayaLibre',
  shadows: [
    Shadow(
      offset: Offset(0.5, 1.5),
      blurRadius: 1.0,
      color: Colors.green,
    ),
  ],
);