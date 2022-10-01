import 'package:flutter/material.dart';
import 'package:lern_base/screens/addThemeScreen.dart';
import 'package:lern_base/screens/eachThemeScreen.dart';
import 'package:lern_base/screens/homeScreen.dart';
import 'package:lern_base/screens/newGame.dart';
import 'package:lern_base/screens/themeScreen.dart';
import 'const/slyles.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RABBIT",
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/theme': (context) => ThemeScreen(),
        '/eachTheme': (context) => EachThemeScreen(),
        '/addTheme': (context) => AddThemeScreen(),
        '/newGame': (context) => NewGame(),
      },
      // home: Scaffold(
      //   body: HomeScreen(),
      // ),
    );
  }
}


