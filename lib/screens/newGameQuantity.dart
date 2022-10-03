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
  Map<String, dynamic>? _values;

  // String? _result;

  @override
  void initState() {
    super.initState();
    _values = {};
    // _result = '';
  }

  @override
  Widget build(BuildContext context) {
    final _argumentsQuantity =
        (ModalRoute.of(context)?.settings.arguments ?? 3) as int;

    void _chekValidatorDate() {
      if (_values?.length != _argumentsQuantity) {
        if (_values?.length == 0) {
          for (int i = 1; i < _argumentsQuantity + 1; i++) {
            _values?[i.toString()] = 'Игрок $i';
          }
        } else {
          for (int i = 1; i < _argumentsQuantity + 1; i++) {
            if (_values?.containsKey(i.toString()) == false) {
              _values?[i.toString()] = 'Игрок $i';
            }
          }
        }
      }
    }

    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView.builder(
            shrinkWrap: true,
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
                              _chekValidatorDate();
                              print(_values);
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
    var key = index + 1;
    return TextField(
      style: eachThemeHeaderTextStyle,
      enabled: true,
      // textAlign: TextAlign.right,
      decoration: InputDecoration(
        // alignLabelWithHint: false,
        focusedBorder: myBorderStyleForAddTheme,
        enabledBorder: myBorderStyleForAddTheme,
        disabledBorder: myBorderStyleForAddTheme,
        border: myBorderStyleForAddTheme,
        hintText: 'Игрок ' + (key).toString(),
        hintStyle: eachThemeHeaderTextStyle,
        suffixIcon: Icon(
          Icons.create,
        ),
      ),
      onChanged: (val) {
        _onUpdate(key, val);
        // print(val);
      },
    );
  }

  _onUpdate(int key, String val) {
    var tempKey = key.toString();
    _values?[tempKey] = val;
  }
}
