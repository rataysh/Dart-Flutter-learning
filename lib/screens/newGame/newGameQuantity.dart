// import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import '../../const/SharedPreferenceConst.dart';
import '../../const/orientation.dart';
import '../../const/styles.dart';
import '../../generated/locale_keys.g.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/MainBackground.dart';
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
    final argumentsListFromStart =
        (ModalRoute.of(context)?.settings.arguments ?? 3) as List;
    final argumentsQuantity = argumentsListFromStart[0];
    final argumentsThemeNumber = argumentsListFromStart[1];
    void _checkValidatorDate() {
      if (_valuesMap?.length != argumentsQuantity) {
        if (_valuesMap?.length == 0) {
          for (int i = 1; i < argumentsQuantity + 1; i++) {
            _valuesMap?[i.toString()] = LocaleKeys.newGamePlayer.tr() + " $i";
          }
        } else {
          for (int i = 1; i < argumentsQuantity + 1; i++) {
            if (_valuesMap?.containsKey(i.toString()) == false) {
              _valuesMap?[i.toString()] = LocaleKeys.newGamePlayer.tr() + " $i";
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
                              _checkValidatorDate();
                              Navigator.pushNamed(context, '/newGameRole',
                                  arguments: [_valuesMap, argumentsThemeNumber]);
                            },
                            child: Text(
                              LocaleKeys.newGameNext.tr(),
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
