import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
// import 'package:flutter/src/material/input_border.dart';

// Цвета
const colorBackgroundMain = Color(0xFFEAFED0); // Главный цвет
const colorBackgroundButton = Color(0xFF3EE3A8); //Цвет кнопок
const colorDisabledButton = Color(0xFF9ee2c9); //Цвет Неактивных кнопок
const colorRulesHeaderText = Color(0xFFFFE27D); // Цвет заголовка правил
const colorRulesHeaderShadowText = Color(0xFFCCAB45); // Цвет тени заголовка правил
const colorEachThemeElements = Color(0xFF9b8134); // Цвет каждого элемента темы
const colorNewGameStartHeaderText = Color(0xFF5C480C); // Цвет тени заголовка правил

// Стили
// Кнопки главного меню
final ButtonStyle mainMenuButtonStyle = ElevatedButton.styleFrom(
  backgroundColor: colorBackgroundButton,
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
  backgroundColor: colorBackgroundButton,
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

const _textStyleHeaderNewGameRules = TextStyle(
  color: colorRulesHeaderText,
  fontSize: 40.0,
  fontWeight: FontWeight.w800,
  letterSpacing: 0.6,
  wordSpacing: 1,
  overflow: TextOverflow.clip,
  shadows: [
    Shadow(
      offset: Offset(1.0, 1.0),
      blurRadius: 0.5,
      color: colorRulesHeaderShadowText,
    ),
  ],
);
final textStyleHeaderNewGameRules = GoogleFonts.tinos(
  textStyle: _textStyleHeaderNewGameRules,
);

// Текст заголовка на экране newGameStart
const _textStyleNewGameStartHeader = TextStyle(
  color: colorNewGameStartHeaderText,
  fontSize: 30.0,
  fontWeight: FontWeight.w600,
  letterSpacing: 1,
  wordSpacing: 1,
  overflow: TextOverflow.clip,
  // shadows: [
  //   Shadow(
  //     offset: Offset(1.0, 1.0),
  //     blurRadius: 1,
  //     color: colorRulesHeaderText,
  //   ),
  // ],
);
final textStyleNewGameStartHeader = GoogleFonts.tinos(
  textStyle: _textStyleNewGameStartHeader,
);

// Текст заголовка в теме
const _textStyleEachThemeHeader = TextStyle(
  color: colorNewGameStartHeaderText,
  fontSize: 26.0,
  fontWeight: FontWeight.w900,
  letterSpacing: 2,
  wordSpacing: 1,
  overflow: TextOverflow.clip,
  // shadows: [
  //   Shadow(
  //     offset: Offset(1.5, 1.0),
  //     blurRadius: 1.5,
  //     color: colorRulesHeaderShadowText,
  //   ),
  // ],
);
final textStyleEachThemeHeader = GoogleFonts.tinos(
  textStyle: _textStyleEachThemeHeader,
);

// Стиль текста заголовков для правил
const _textStyleHeaderRules = TextStyle(
  color: colorRulesHeaderText,
  fontSize: 24.0,
  fontWeight: FontWeight.w800,
  letterSpacing: 0.6,
  wordSpacing: 1,
  shadows: [
    Shadow(
      offset: Offset(0.5, 0.5),
      blurRadius: 1.0,
      color: colorRulesHeaderShadowText,
    ),
  ],
);
final textStyleHeaderRules = GoogleFonts.tinos(
  textStyle: _textStyleHeaderRules,
);

// Текст каждого слова в теме
const _textStyleEachThemeElements = TextStyle(
  color: colorEachThemeElements,
  fontSize: 24.0,
  fontWeight: FontWeight.w800,
);
final textStyleEachThemeElements = GoogleFonts.tinos(
  textStyle: _textStyleEachThemeElements,
);


// Текст для заполнения newGameStart
const _textStyleNewGameStartElements = TextStyle(
  color: colorEachThemeElements,
  fontSize: 22.0,
  fontWeight: FontWeight.w800,
);
final textStyleNewGameStartElements = GoogleFonts.tinos(
  textStyle: _textStyleNewGameStartElements,
);

const _mainMenuButtonTextStyle = TextStyle(
  color: Colors.white,
  fontSize: 26.0,
  fontWeight: FontWeight.w800,
);

final mainMenuButtonTextStyle = GoogleFonts.tinos(
  textStyle: _mainMenuButtonTextStyle,
);

// Стиль текста слов в карточке
const _textStyleWordsInFinalCard = TextStyle(
  color: Colors.black,
  fontSize: 18,
  fontWeight: FontWeight.w400,
  letterSpacing: 0.4,
  wordSpacing: 1,
  overflow: TextOverflow.clip,
);
final textStyleWordsInFinalCard = GoogleFonts.dmSans(
  textStyle: _textStyleWordsInFinalCard,
);

// Стиль текста описания правил
const _textStyleDescriptionRules = TextStyle(
  color: Colors.black,
  fontSize: 22,
  fontWeight: FontWeight.w500,
  overflow: TextOverflow.visible,
);
final textStyleDescriptionRules = GoogleFonts.tinos(
  textStyle: _textStyleDescriptionRules,
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

// Стили для контейнера с правилами до просмотра
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

// Стили для контейнера с правилами после просмотра
final boxDecorationRulesContainerAfterCheck = BoxDecoration(
  color: Colors.black,
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
