import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const/slyles.dart';


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
        Container(
          // padding: mySecondaryScreensPadding,
          child: Text('Выберете количество игроков', style: eachThemeTextStyle),
        ),
        Row(
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
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
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
}
