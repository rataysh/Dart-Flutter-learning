import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// import 'package:flutter_swipable/flutter_swipable.dart';
import '../const/slyles.dart';
import 'elementsOfScreens/backButton.dart';
import 'elementsOfScreens/background.dart';
import 'package:flip_card/flip_card.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

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
          Swiper(
              control: SwiperControl(
                color: colorBackgroundButton,
              ),
              scrollDirection: Axis.horizontal,
              // shrinkWrap: true,
              // padding: mySecondaryScreensPadding,
              physics: const BouncingScrollPhysics(),
              layout: SwiperLayout.TINDER,
              itemWidth: 300,
              itemHeight: 500,
              itemCount: _argumentsPlayersName.length,
              itemBuilder: (_, index) => FlipCard(
                    direction: FlipDirection.HORIZONTAL,
                    front: _frontSide(index, _argumentsPlayersName),
                    back: Text('BACK'),
                  )),
          Container(
            alignment: Alignment.bottomCenter,
            child: ElevatedButton(
              style: mainMenuButtonStyle,
              onPressed: () {
                // print(_argumentsPlayersName['3']);
              },
              child: const Text(
                'TEST',
                style: mainMenuButtonTextStyle,
              ),
            ),
          ),
          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }

  _frontSide(index, arguments) {
      var _tempName;
      index++;
      _tempName = arguments["$index"];
    return Container(
      alignment: Alignment.center,
      width: 300,
      height: 500,
      decoration: BoxDecoration(
        gradient: const LinearGradient(
            begin: Alignment.center,
          end: Alignment.bottomRight,
          colors: [colorDisabledButton, colorBackgroundButton]
        ),
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
        border: Border.all(
          style: BorderStyle.solid,
          width: 4,
          color: Colors.black,
        ),
        // color: colorDisabledButton,
      ),
      child: Text(
          '$_tempName',
      style: eachThemeHeaderTextStyle,),
    );
  }
}
