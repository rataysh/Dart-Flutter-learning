// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../const/orientation.dart';
import '../const/ref.dart';
import 'elementsOfScreens/background.dart';
import 'elementsOfScreens/homeScreen/homeSceanButton.dart';
import 'elementsOfScreens/homeScreen/speak.dart';
import 'elementsOfScreens/homeScreen/vibrationIcon.dart';
import 'package:flutter_animate/flutter_animate.dart';

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

  bool _controller = false;

  @override
  Widget build(BuildContext context) {
    // setState(() {
    //   myOrientationPortrait();
    // });
    return Material(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          MainBackground(),
          VibrationIcon(),
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
                      HomeButton(
                        title: 'Новая игра',
                        navigatorPath: '/newGameStart',
                      ),
                      HomeButton(
                        title: 'Темы',
                        navigatorPath: '/themeMain',
                      ),
                      HomeButton(
                        title: 'Правила',
                        navigatorPath: '/rulesMain',
                      ),
                    ],
                  ),
                  Stack(
                    children: [
                      GestureDetector(
                        onTap: () => setState(() => _controller = !_controller),
                        child: Image.asset(
                          alignment: Alignment.bottomCenter,
                          pathBodyRabImage,
                          fit: BoxFit.scaleDown,
                          scale: 3.3,
                        ).animate(target: _controller ? 1 : 0).shakeY(hz: 5),
                      ),
                      SpeakCloud()
                          .animate(target: _controller ? 1 : 0)
                          .slideX(begin: 0.7, end: 0.7)
                          .slideY(begin: 0.3, end: 0.3)
                          .fade(begin: 0, end: 1, duration: 200.ms)
                          .shimmer(duration: 1200.ms)
                          .then(delay: 1200.ms)
                          .fade(begin: 1, end: 0, duration: 200.ms),
                    ],
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
