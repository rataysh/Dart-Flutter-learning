import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../classes/AllTheme.dart';
import '../const/slyles.dart';
import 'elementsOfScreens/eachThemePart.dart';

class AddNewPlayers extends StatefulWidget {
  const AddNewPlayers({Key? key}) : super(key: key);

  @override
  State<AddNewPlayers> createState() => _AddNewPlayersState();
}

class _AddNewPlayersState extends State<AddNewPlayers> {
  int quantity = 3;

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
        _myChouseQuantity(),
        const Text('Выберите тему', style: eachThemeHeaderTextStyle),
        // eachThemeForm('TEST'),
        _myChouseTheme(myAllTheme.listAllTheme[2].name),
        Padding(
          padding: const EdgeInsets.all(6.0),
          child: ElevatedButton(
            style: mainMenuButtonStyle,
            onPressed: () {
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
    print('TEST');
  }

  _myIconThemeButton(icon, func) {
    return IconButton(
        padding: EdgeInsets.all(1.0),
        alignment: Alignment.centerRight,
        color: colorBackgroundButton,
        onPressed: () {
          func();
        },
        icon: Icon(icon));
  }

  _myChouseQuantity() {
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

  _myChouseTheme(data) {
    return Container(
      padding: EdgeInsets.all(3.0),
      alignment: Alignment.center,
      width: 350,
      height: 50,
      decoration: BoxDecoration(
        // color: Colors.white,
        border: Border.all(
          color: colorBorderForAddTheme,
          width: 2,
        ),
        borderRadius: BorderRadius.all(Radius.circular(15.0)),
      ),
      child: Row(
        // mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(
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
          // _iconThemeButton(Icons.dehaze, testFunc),
          Flexible(
            flex: 1,
            child: _myIconThemeButton(Icons.dehaze, _randomTheme),
          ),
          Flexible(
            flex: 1,
            child: _myIconThemeButton(Icons.sync, _randomTheme),
          ),
        ],
      ),
    );
  }
}
