import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import './screens/homeScreen.dart';
import './screens/newGame/newGameFinal.dart';
import './screens/newGame/newGameQuantity.dart';
import './screens/newGame/newGameRole.dart';
import './screens/newGame/newGameStart.dart';
import './screens/rules/rulesMain.dart';
import './screens/theme/themeEach.dart';
import './screens/theme/themeMain.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    // DeviceOrientation.landscapeLeft,
    // DeviceOrientation.landscapeRight,
  ]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "ЗАЯЦ",
      initialRoute: '/',
      routes: {
        '/': (context) => const HomeScreen(),
        '/themeMain': (context) => ThemeMain(),
        '/themeEach': (context) => ThemeEach(),
        '/newGameStart': (context) => NewGameStart(),
        '/newGameQuantity': (context) => NewGameQuantity(),
        '/newGameRole': (context) => NewGameRole(),
        '/newGameFinal': (context) => NewGameFinal(),
        '/rulesMain': (context) => RulesMain(),
      },
    );
  }
}
