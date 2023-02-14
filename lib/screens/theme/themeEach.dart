// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../classes/AllTheme.dart';
import '../../const/styles.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/background.dart';
import '../elementsOfScreens/themeElements/eachThemePart.dart';

class ThemeEach extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final argumentsIndexTheme =
        (ModalRoute.of(context)?.settings.arguments ?? 0) as int;

    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView.builder(
            padding: mySecondaryScreensPadding,
            physics: const BouncingScrollPhysics(),
            itemCount: myAllTheme
                    .languageTheme[argumentsIndexTheme].allElements.length+1,
            itemBuilder: (_, index) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              // mainAxisSize: MainAxisSize.max,
              children: [
                index == 0
                    ? eachThemeFormHeader(
                        myAllTheme.languageTheme[argumentsIndexTheme].name,
                    context)
                    : eachThemeForm(myAllTheme
                        .languageTheme[argumentsIndexTheme].allElements[index-1].toString()),
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
