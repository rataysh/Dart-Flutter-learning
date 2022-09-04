import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../classes/AllTheme.dart';
import '../const/slyles.dart';
import 'addThemeScreen.dart';
import 'eachThemeScreen.dart';
import 'elementsOfScreens/addNewThemeButton.dart';
import 'elementsOfScreens/backButton.dart';
import 'elementsOfScreens/background.dart';

var dataKindOfTheme;
var dataChekStandartThemeFlag;

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
            itemBuilder: (_, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    dataKindOfTheme = myAllTheme.listAllTheme[index].dict;
                    dataChekStandartThemeFlag =
                        myAllTheme.listAllTheme[index].standartThemeFlag;
                    print(myAllTheme.listAllTheme[index].standartThemeFlag);
                    Navigator.push(
                        context,
                        CupertinoPageRoute(
                            builder: (context) => EachThemeScreen()));
                  },
                  style: themeMenuButtonStyle,
                  child: Text(
                    myAllTheme.listAllTheme[index].name,
                    style: mainMenuButtonTextStyle,
                  ),
                ),
              ],
            ),
          ),
          AddNewThemeButton(),
          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}
