import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lern_base/const/orientation.dart';
import 'package:vibration/vibration.dart';
import '../const/durationVibration.dart';
import '../const/ref.dart';
import '../const/slyles.dart';
import 'elementsOfScreens/background.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  void initState() {
    myOrientationPortrait();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    setState(() {
      myOrientationPortrait();
    });
    return Material(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          MainBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    pathNameImage,
                    fit: BoxFit.scaleDown,
                    scale: 3,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(
                          style: mainMenuButtonStyle,
                          onPressed: () {
                            Vibration.vibrate(duration: durationVibration);
                            Navigator.pushNamed(context, '/newGameStart');
                          },
                          child: const Text(
                            'Новая игра',
                            style: mainMenuButtonTextStyle,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(
                          style: mainMenuButtonStyle,
                          onPressed: () {
                            Vibration.vibrate(duration: durationVibration);
                            Navigator.pushNamed(context, '/themeMain');
                          },
                          child: const Text(
                            'Темы',
                            style: mainMenuButtonTextStyle,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(
                          style: mainMenuButtonStyle,
                          onPressed: () {
                            Vibration.vibrate(duration: durationVibration);
                            Navigator.pushNamed(context, '/rulesMain');
                          },
                          child: const Text(
                            'Правила',
                            style: mainMenuButtonTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    alignment: Alignment.bottomCenter,
                    pathBodyRabImage,
                    fit: BoxFit.scaleDown,
                    scale: 3.3,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
