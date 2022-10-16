import 'package:flutter/material.dart';
import 'package:flutter/src/material/input_border.dart';

// Цвета
const colorBackgroundMain = Color(0xFFEAFED0); // Главный цвет
const colorBackgroundButton = Color(0xFF3EE3A8); //Цвет кнопок
const colorDisabledButton = Color(0xFF9ee2c9); //Цвет Неактивных кнопок
const colorRulesHeaderText = Color(0xFFFFE27D); // Цвет заголовка правил
const colorRulesHeaderSwadowText = Color(0xFFCCAB45); // Цвет тени заголовка правил
const colorEachThemeElements = Color(0xFF9b8134); // Цвет каждого элемента темы
const colorNewGameStartHeaderText = Color(0xFF786A3E); // Цвет тени заголовка правил

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

// TEXT
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

// Текст каждого слова в теме
const textStyleEachThemeElements = TextStyle(
  color: colorEachThemeElements,
  fontSize: 24.0,
  fontWeight: FontWeight.w800,
  fontFamily: 'AbhayaLibre',
  shadows: [
    Shadow(
      offset: Offset(1.5, 1.5),
      blurRadius: 1.0,
      color: colorBackgroundMain,
    ),
  ],
);

// Текст для заполнения newGameStart
const textStyleNewGameStartElements = TextStyle(
  color: colorEachThemeElements,
  fontSize: 22.0,
  fontWeight: FontWeight.w800,
  fontFamily: 'AbhayaLibre',
  shadows: [
    Shadow(
      offset: Offset(1.5, 1.5),
      blurRadius: 1.0,
      color: colorBackgroundMain,
    ),
  ],
);

// Текст заголовка на экране newGameStart
const textStyleNewGameStartHeader = TextStyle(
  color: colorNewGameStartHeaderText,
  fontSize: 30.0,
  fontWeight: FontWeight.w600,
  fontFamily: 'AbhayaLibre',
  letterSpacing: 1,
  wordSpacing: 1,
  overflow: TextOverflow.clip,
  shadows: [
    Shadow(
      offset: Offset(1.0, 1.0),
      blurRadius: 1,
      color: colorRulesHeaderText,
    ),
  ],
);

// Текст заголовка на экране newGameFinal
const textStyleNewGameFinalHeader = TextStyle(
  color: colorRulesHeaderSwadowText,
  fontSize: 18.0,
  fontWeight: FontWeight.w600,
  fontFamily: 'AbhayaLibre',
  letterSpacing: 1,
  wordSpacing: 1,
  overflow: TextOverflow.ellipsis,
  shadows: [
    Shadow(
      offset: Offset(1.0, 1.0),
      blurRadius: 1,
      color: colorRulesHeaderText,
    ),
  ],
);

// Текст заголовка в теме
const textStyleEachThemeHeader = TextStyle(
  color: colorNewGameStartHeaderText,
  fontSize: 26.0,
  fontWeight: FontWeight.w900,
  fontFamily: 'AbhayaLibre',
  letterSpacing: 2,
  wordSpacing: 1,
  overflow: TextOverflow.clip,
  shadows: [
    Shadow(
      offset: Offset(1.5, 1.0),
      blurRadius: 1.5,
      color: colorRulesHeaderSwadowText,
    ),
  ],
);

// Стиль текста заголовков для правил
const textStyleHeaderRules = TextStyle(
  color: colorRulesHeaderText,
  fontSize: 24.0,
  fontWeight: FontWeight.w800,
  fontFamily: 'AbhayaLibre',
  letterSpacing: 0.6,
  wordSpacing: 1,
  shadows: [
    Shadow(
      offset: Offset(2.0, 2.0),
      blurRadius: 1.0,
      color: colorRulesHeaderSwadowText,
    ),
  ],
);

// Стиль текста заголовков для правил
const textStyleHeaderNewGameRules = TextStyle(
  color: colorRulesHeaderText,
  fontSize: 40.0,
  fontWeight: FontWeight.w800,
  fontFamily: 'AbhayaLibre',
  letterSpacing: 0.6,
  wordSpacing: 1,
  overflow: TextOverflow.clip,
  shadows: [
    Shadow(
      offset: Offset(2.0, 2.0),
      blurRadius: 1.0,
      color: colorRulesHeaderSwadowText,
    ),
  ],
);

// Стиль текста слов в карточке
const textStyleWordsInFinalCard= TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.w400,
  fontFamily: 'DMSans',
  letterSpacing: 0.4,
  wordSpacing: 1,
  overflow: TextOverflow.clip,
);

// Стиль текста описания правил
const textStyleDescriptionRules = TextStyle(
  color: Colors.black,
  fontSize: 17,
  fontWeight: FontWeight.w400,
  fontFamily: 'DMSans',
  letterSpacing: 0.4,
  wordSpacing: 1,
  overflow: TextOverflow.clip,
);

// Константа для размера бокса на экране
const newGameFinalHeightSizedBox = 70.0;

// Паддинг для второстепенных экранов, которые сохроняют главную тему
const mySecondaryScreensPadding = EdgeInsets.fromLTRB(5, 140, 5, 140);
const myEachThemeScreensPadding = EdgeInsets.fromLTRB(5, 210, 5, 140);

// Стиль рамки выделения при создании новой темы
const colorBorderForAddTheme = colorRulesHeaderText;
const InputBorder myBorderStyleForAddTheme = OutlineInputBorder(
  borderSide: BorderSide(
    color: colorBorderForAddTheme,
    width: 3,
  ),
  borderRadius: BorderRadius.all(Radius.circular(15.0)),
);

// Cтиль рамки Длы заголовка Темы в themeEach
const InputBorder themeEachBorderHeader = UnderlineInputBorder(
  borderSide: BorderSide(
    style: BorderStyle.none,
    color: colorBorderForAddTheme,
    width: 2,
  ),
);

// Стили для контейнера с правилами
final boxDecorationRulesContainer = BoxDecoration(
  color: Colors.white,
  borderRadius: const BorderRadius.all(Radius.circular(18.0)),
  border: Border.all(
    color: const Color(0xFFD1E8B3),
    width: 2,
  ),
  boxShadow: const [
    BoxShadow(
      color: Color(0xFFD1E8B3),
      offset: Offset(3.0, 4.0),
      blurRadius: 1.0,
    ),
  ],
);
