import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../const/orientation.dart';
import '../../const/slyles.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/background.dart';
import '../elementsOfScreens/newGameElements/newGameQuantityTextForm.dart';



class NewGameQuantity extends StatefulWidget {
  @override
  State<NewGameQuantity> createState() => _NewGameQuantityState();
}

class _NewGameQuantityState extends State<NewGameQuantity> {
  Map<String, dynamic>? _values;

  @override
  void initState() {
    super.initState();
    _values = {};
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      myOrientationPortrait();
    });

    final argumentsListFromStart =
        (ModalRoute.of(context)?.settings.arguments ?? 3) as List;
    final argumentsQuantity = argumentsListFromStart[0];
    final argumentsThemeNumber = argumentsListFromStart[1];

    void _chekValidatorDate() {
      if (_values?.length != argumentsQuantity) {
        if (_values?.length == 0) {
          for (int i = 1; i < argumentsQuantity + 1; i++) {
            _values?[i.toString()] = 'Игрок $i';
          }
        } else {
          for (int i = 1; i < argumentsQuantity + 1; i++) {
            if (_values?.containsKey(i.toString()) == false) {
              _values?[i.toString()] = 'Игрок $i';
            }
          }
        }
      }
    }

    _onUpdate(int key, String val) {
      var tempKey = key.toString();
      _values?[tempKey] = val;
    }

    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView.builder(
            shrinkWrap: true,
            padding: mySecondaryScreensPadding,
            physics: const BouncingScrollPhysics(),
            itemCount: argumentsQuantity,
            itemBuilder: (_, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                index + 1 == argumentsQuantity
                    ? Column(
                        children: [
                          newGameQuantityTextForm(index, _onUpdate),
                          const SizedBox(height: 10),
                          ElevatedButton(
                            style: mainMenuButtonStyle,
                            onPressed: () {
                              _chekValidatorDate();
                              Navigator.pushNamed(context, '/newGameRole',
                                  arguments: [_values, argumentsThemeNumber]);
                            },
                            child: const Text(
                              'Далее',
                              style: mainMenuButtonTextStyle,
                            ),
                          ),
                        ],
                      )
                    : newGameQuantityTextForm(index, _onUpdate),
              ],
            ),
          ),
          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}
