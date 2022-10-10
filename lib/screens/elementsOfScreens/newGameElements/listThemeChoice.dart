import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../classes/AllTheme.dart';
import '../../../const/slyles.dart';
import '../background.dart';


class ListThemeChoice extends StatelessWidget {
  const ListThemeChoice({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView.builder(
            padding: const EdgeInsets.fromLTRB(10, 50, 10, 50),
            physics: const BouncingScrollPhysics(),
            itemCount: myAllTheme.listAllTheme.length,
            itemBuilder: (_, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                ElevatedButton(
                  onPressed: () {
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
        ],
      ),
    );
  }
}
