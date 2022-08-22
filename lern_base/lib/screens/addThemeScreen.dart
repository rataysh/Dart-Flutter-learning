import 'package:flutter/material.dart';
import '../classes/AllTheme.dart';
import '../const/slyles.dart';
import 'elementsOfScreens/background.dart';
import 'elementsOfScreens/backButton.dart';

class AddThemeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView(
            padding: mySecondaryScreensPadding,
            physics: const BouncingScrollPhysics(),
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  TextField(
                    decoration:
                        InputDecoration(hintText: "Введите название темы"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №1"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №2"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №3"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №4"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №5"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №6"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №7"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №8"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №9"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №10"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №11"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №12"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №13"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №14"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №15"),
                    textInputAction: TextInputAction.next,
                  ),
                  TextField(
                    decoration: InputDecoration(hintText: "Слово №16"),
                    textInputAction: TextInputAction.next,
                  ),
                ],
              ),
            ],
          ),
          MyBackButton(),
        ],
      ),
      // separatorBuilder: (_, __) => const Divider()
    );
  }
}
