import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../classes/AllTheme.dart';
import '../../const/slyles.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/background.dart';


// var dataChekStandartThemeFlag;

class ThemeMain extends StatelessWidget {
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
                    // dataChekStandartThemeFlag =
                    //     myAllTheme.listAllTheme[index].standartThemeFlag;
                    // print(myAllTheme.listAllTheme[index].allElements.length);
                    Navigator.pushNamed(context, '/themeEach',
                        arguments: index);
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
          // AddNewThemeButton(), Добавить потом, база уже есть
          MyBackButton(),
        ],
      ),
    );
  }
}
