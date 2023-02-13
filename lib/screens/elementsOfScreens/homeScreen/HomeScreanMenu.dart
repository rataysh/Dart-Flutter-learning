

import 'package:flutter/cupertino.dart';

import 'homeScreanButton.dart';

class HomeButtonsColumn extends StatelessWidget {
  const HomeButtonsColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        HomeButton(
          title: 'Новая игра',
          navigatorPath: '/newGameStart',
        ),
        HomeButton(
          title: 'Темы',
          navigatorPath: '/themeMain',
        ),
        HomeButton(
          title: 'Правила',
          navigatorPath: '/rulesMain',
        ),
      ],
    );
  }
}