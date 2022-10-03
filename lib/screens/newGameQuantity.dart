import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const/slyles.dart';
import 'elementsOfScreens/backButton.dart';
import 'elementsOfScreens/background.dart';

class NewGameQuantity extends StatefulWidget {
  @override
  State<NewGameQuantity> createState() => _NewGameQuantityState();
}

class _NewGameQuantityState extends State<NewGameQuantity> {
  // String tempText = '';
  @override
  Widget build(BuildContext context) {
    final _argumentsQuantity =
        (ModalRoute.of(context)?.settings.arguments ?? 3) as int;

    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView.builder(
            padding: mySecondaryScreensPadding,
            physics: const BouncingScrollPhysics(),
            itemCount: _argumentsQuantity,
            itemBuilder: (_, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                index + 1 == _argumentsQuantity
                    ? Column(
                        children: [
                          _newGameQuantityTextForm(index),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            style: mainMenuButtonStyle,
                            onPressed: () {
                              print('');
                              // Navigator.pushNamed(context, '/newGameQuantity');
                            },
                            child: const Text(
                              'Далее',
                              style: mainMenuButtonTextStyle,
                            ),
                          ),
                        ],
                      )
                    : _newGameQuantityTextForm(index),
              ],
            ),
          ),
          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }

  _newGameQuantityTextForm(int index) {
    return TextFormField(
      style: eachThemeHeaderTextStyle,
      enabled: true,
      // textAlign: TextAlign.right,
      decoration: InputDecoration(
        // alignLabelWithHint: false,
        focusedBorder: myBorderStyleForAddTheme,
        enabledBorder: myBorderStyleForAddTheme,
        disabledBorder: myBorderStyleForAddTheme,
        border: myBorderStyleForAddTheme,
        hintText: 'Игрок ' + (index + 1).toString(),
        hintStyle: eachThemeHeaderTextStyle,
      ),
    );
  }
}
