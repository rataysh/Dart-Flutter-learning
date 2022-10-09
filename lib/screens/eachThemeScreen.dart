import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lern_base/screens/themeScreen.dart';
import '../const/slyles.dart';
import 'elementsOfScreens/backButton.dart';
import 'elementsOfScreens/background.dart';
import 'elementsOfScreens/theme/eachThemePart.dart';

class EachThemeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView.builder(
            padding: mySecondaryScreensPadding,
            physics: const BouncingScrollPhysics(),
            itemCount: dataKindOfTheme.values.toList()[0].length+1,
            itemBuilder: (_, index) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                index == 0
                ? eachThemeForm(dataKindOfTheme.keys.toList()[0])
                : eachThemeForm(dataKindOfTheme.values.toList()[0][index-1]),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          MyBackButton(),
          // ChangeThemeButton(),// separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}

