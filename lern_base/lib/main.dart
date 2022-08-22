import 'package:flutter/material.dart';
import 'package:lern_base/screens/homeScreen.dart';
import 'package:lern_base/screens/themeScreen.dart';
import 'const/slyles.dart';


void main() => runApp(MyApp());


class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "RABBIT",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("RABBIT"),
          centerTitle: true,
          backgroundColor: backgroundMain,
          toolbarOpacity: 1,
          toolbarHeight: 0,
        ),
        body: HomeScreen(),
      ),
    );
  }
}
