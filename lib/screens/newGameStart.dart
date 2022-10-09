import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../classes/AllTheme.dart';
import '../const/slyles.dart';
import 'listThemeChoice.dart';

class AddNewPlayers extends StatefulWidget {
  const AddNewPlayers({Key? key}) : super(key: key);

  @override
  State<AddNewPlayers> createState() => _AddNewPlayersState();
}

class _AddNewPlayersState extends State<AddNewPlayers> {
  int quantity = 3;
  var themeNumberForShow = 0;

  @override
  void initState() {
    super.initState();
  }

  void plusPlayers() {
    setState(() {
      quantity == 12 ? quantity = 12 : quantity += 1;
    });
  }

  void minusPlayers() {
    setState(() {
      quantity == 3 ? quantity = 3 : quantity -= 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('Выберите количество игроков',
            style: eachThemeHeaderTextStyle),
        _myChoiceQuantity(),
        const Text('Выберите тему', style: eachThemeHeaderTextStyle),
        _myChoiceTheme(myAllTheme.listAllTheme[themeNumberForShow].name),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: ElevatedButton(
            style: mainMenuButtonStyle,
            onPressed: () async {
              Navigator.pushNamed(context, '/newGameQuantity',
                  arguments: quantity);
            },
            child: const Text(
              'Далее',
              style: mainMenuButtonTextStyle,
            ),
          ),
        ),
      ],
    );
  }

  _randomTheme() {
    return themeNumberForShow =
        Random().nextInt(myAllTheme.listAllTheme.length);
  }

  _miniViewAllTheme() {
    return showModalBottomSheet(
      // isScrollControlled: true,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            top: Radius.circular(30),
          ),
        ),
        context: context,
        builder: (context) =>  ListThemeChoice(),
    );
  }

  _myIconThemeButton(icon, func) {
    return IconButton(
        padding: EdgeInsets.all(1.0),
        alignment: Alignment.centerRight,
        color: colorBackgroundButton,
        onPressed: () async {
          final result = await func();
          setState(() {
            themeNumberForShow = result;
          });
        },
        icon: Icon(icon));
  }

  _myChoiceTheme(data) {
    return Container(
      padding: const EdgeInsets.all(3.0),
      alignment: Alignment.center,
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        // color: Colors.white,
        border: Border.all(
          color: colorBorderForAddTheme,
          width: 2,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          const SizedBox(
            width: 10,
          ),
          Flexible(
            flex: 7,
            child: Container(
              alignment: Alignment.centerLeft,
              child: Text(
                data,
                style: eachThemeHeaderTextStyle,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Flexible(
            flex: 1,
            child: _myIconThemeButton(Icons.dehaze, _miniViewAllTheme),
          ),
          Flexible(
            flex: 1,
            child: _myIconThemeButton(Icons.sync, _randomTheme),
          ),
        ],
      ),
    );
  }

  _myChoiceQuantity() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        quantity == 3
            ? const IconButton(
          onPressed: null,
          iconSize: 40,
          color: colorDisabledButton,
          icon: Icon(
            Icons.remove,
          ),
        )
            : IconButton(
          onPressed: () {
            minusPlayers();
          },
          iconSize: 40,
          color: colorBackgroundButton,
          icon: const Icon(
            Icons.remove,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            // color: Colors.white60,
              child: Text(
                '$quantity',
                style: eachThemeHeaderTextStyle,
              )),
        ),
        quantity == 12
            ? const IconButton(
          iconSize: 40,
          color: colorDisabledButton,
          icon: Icon(
            Icons.add,
          ),
          onPressed: null,
        )
            : IconButton(
          iconSize: 40,
          color: colorBackgroundButton,
          icon: const Icon(
            Icons.add,
          ),
          onPressed: () {
            plusPlayers();
          },
        ),
      ],
    );
  }
}
