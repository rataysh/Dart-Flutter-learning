

import 'package:Rabbit/generated/locale_keys.g.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/cupertino.dart';

import 'HomeScreenButton.dart';

class HomeButtonsColumn extends StatelessWidget {
  const HomeButtonsColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeButton(
          title: LocaleKeys.homeScreenNewGame.tr(),
          navigatorPath: '/newGameStart',
        ),
        HomeButton(
          title: LocaleKeys.homeScreenThemes.tr(),
          navigatorPath: '/themeMain',
        ),
        HomeButton(
          title: LocaleKeys.homeScreenRules.tr(),
          navigatorPath: '/rulesMain',
        ),
      ],
    );
  }
}