import 'package:Rabbit/generated/codegen_loader.g.dart';
import 'package:easy_localization/easy_localization.dart';
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

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
    // DeviceOrientation.landscapeLeft,
    // DeviceOrientation.landscapeRight,
  ]);
  runApp(
    EasyLocalization(
        supportedLocales: [Locale('en'), Locale('ru')],
        path: 'assets/translations',
        fallbackLocale: Locale('en'),
        assetLoader: CodegenLoader(),
        child: MyApp()
    ),
  );
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      localizationsDelegates: context.localizationDelegates,
      supportedLocales: context.supportedLocales,
      locale: context.locale,
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
