import 'package:flutter/material.dart';
import 'package:lern_base/screens/themeScreen.dart';
import '../classes/AllTheme.dart';
import '../classes/ListTheme.dart';
import '../const/ref.dart';
import '../const/slyles.dart';
import '../const/standartTheme.dart';
import 'elementsOfScreens/background.dart';

class ThemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        MainBackground(),
        ListView.builder(
          physics: BouncingScrollPhysics(),
          itemCount: myAllTheme.listAllTheme.length,
          itemBuilder: (_, index) => ElevatedButton(
            onPressed: () {},
            style: themeMenuButtonStyle,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        myAllTheme.listAllTheme[index].name,
                        style: mainMenuButtonTextStyle,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ) // separatorBuilder: (_, __) => const Divider(),
      ],
    );
  }
}
