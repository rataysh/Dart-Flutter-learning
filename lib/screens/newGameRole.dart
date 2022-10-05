import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const/slyles.dart';
import 'elementsOfScreens/backButton.dart';
import 'elementsOfScreens/background.dart';
import 'package:flip_card/flip_card.dart';

class NewGameRole extends StatefulWidget {
  @override
  State<NewGameRole> createState() => _NewGameRoleState();
}

class _NewGameRoleState extends State<NewGameRole> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final _argumentsPlayersName =
        ModalRoute.of(context)?.settings.arguments as Map;

    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView.builder(
            scrollDirection: Axis.horizontal,
            shrinkWrap: true,
            padding: mySecondaryScreensPadding,
            physics: const BouncingScrollPhysics(),
            itemCount: _argumentsPlayersName.length,
            itemBuilder: (_, index) => Center(
                child: FlipCard(
              // fill: Fill.fillBack, // Fill the back side of the card to make in the same size as the front.
              direction: FlipDirection.HORIZONTAL,
              front: _frontSide('TEST'),
              back: _frontSide('TEST_BACK'),
            )),
          ),
          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }

  _frontSide(text) {
    return Container(
      alignment: Alignment.center,
      width: 300,
      height: 500,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(25.0)),
        border: Border.all(
          // style: BorderStyle.solid,
          width: 10,
          color: Colors.black,
        ),
        color: Colors.white,
      ),
      child: Text(text),
    );
  }
}
