import 'package:flutter/material.dart';
import '../classes/AllTheme.dart';
import '../const/slyles.dart';
import 'elementsOfScreens/addNewThemeButton.dart';
import 'elementsOfScreens/backButton.dart';
import 'elementsOfScreens/background.dart';

class ThemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView.builder(
            padding: mySecondaryScreensPadding,
            physics: const BouncingScrollPhysics(),
            itemCount: myAllTheme.listAllTheme.length,
            itemBuilder: (_, index) => ElevatedButton(
              onPressed: () {},
              style: themeMenuButtonStyle,
              child: Padding(
                padding: const EdgeInsets.all(7.0),
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
          ),
          AddNewThemeButton(),
          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}
