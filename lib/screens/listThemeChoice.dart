import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../classes/AllTheme.dart';
import '../const/slyles.dart';
import 'elementsOfScreens/backButton.dart';
import 'elementsOfScreens/background.dart';

// var nonLocalThemeNumberForShow = 0;
// var dataChekStandartThemeFlag;

class ListThemeChoice extends StatelessWidget {
  const ListThemeChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView.builder(
            padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),// mySecondaryScreensPadding,
            physics: const BouncingScrollPhysics(),
            itemCount: myAllTheme.listAllTheme.length,
            itemBuilder: (_, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
                    // nonLocalThemeNumberForShow = index;
                    Navigator.pop(context, index);
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
          //  MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}
