// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import '../../const/durationVibration.dart';
import '../../const/orientation.dart';
import '../../const/styles.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/background.dart';
import '../elementsOfScreens/newGameElements/newGameQuantityTextForm.dart';

class NewGameQuantity extends StatefulWidget {
  @override
  State<NewGameQuantity> createState() => _NewGameQuantityState();
}

class _NewGameQuantityState extends State<NewGameQuantity> {
  Map<String, dynamic>? _valuesMap;

  @override
  void initState() {
    super.initState();
    _valuesMap = {};
    myOrientationPortrait();
  }

  @override
  Widget build(BuildContext context) {
    // setState(() {
    //   myOrientationPortrait();
    // });

    final argumentsListFromStart =
        (ModalRoute.of(context)?.settings.arguments ?? 3) as List;
    final argumentsQuantity = argumentsListFromStart[0];
    final argumentsThemeNumber = argumentsListFromStart[1];

    void _chekValidatorDate() {
      if (_valuesMap?.length != argumentsQuantity) {
        if (_valuesMap?.length == 0) {
          for (int i = 1; i < argumentsQuantity + 1; i++) {
            _valuesMap?[i.toString()] = 'Игрок $i';
          }
        } else {
          for (int i = 1; i < argumentsQuantity + 1; i++) {
            if (_valuesMap?.containsKey(i.toString()) == false) {
              _valuesMap?[i.toString()] = 'Игрок $i';
            }
          }
        }
      }
    }

    _onUpdate(int key, String val) {
      var tempKey = key.toString();
      _valuesMap?[tempKey] = val;
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
                              Vibration.vibrate(duration: durationVibration);
                              _chekValidatorDate();
                              Navigator.pushNamed(context, '/newGameRole',
                                  arguments: [_valuesMap, argumentsThemeNumber]);
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

class ListDataSendToNextScreen {
  String id;
  String name;

  ListDataSendToNextScreen(this.id, this.name);

  @override
  String toString() {
    return '[${this.id}, ${this.name}]';
  }
}
