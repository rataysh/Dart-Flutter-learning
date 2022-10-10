import 'package:flutter/material.dart';
import 'package:lern_base/screens/homeScreen.dart';
import 'package:lern_base/screens/newGame/newGameFinal.dart';
import 'package:lern_base/screens/newGame/newGameQuantity.dart';
import 'package:lern_base/screens/newGame/newGameRole.dart';
import 'package:lern_base/screens/newGame/newGameStart.dart';
import 'package:lern_base/screens/theme/themeEach.dart';
import 'package:lern_base/screens/theme/themeMain.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RABBIT",
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/themeMain': (context) => ThemeMain(),
        '/themeEach': (context) => ThemeEach(),
        '/newGameStart': (context) => NewGameStart(),
        '/newGameQuantity': (context) => NewGameQuantity(),
        '/newGameRole': (context) => NewGameRole(),
        '/newGameFinal': (context) => NewGameFinal(),
      },
    );
  }
}


