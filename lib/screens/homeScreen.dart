import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const/ref.dart';
import '../const/slyles.dart';
import 'elementsOfScreens/background.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
                            Navigator.pushNamed(context, '/newGame');
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
                            Navigator.pushNamed(context, '/theme');
                            // Navigator.push(
                            //     context,
                            //     CupertinoPageRoute(
                            //         builder: (context) => ThemeScreen()));
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