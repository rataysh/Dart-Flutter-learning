import 'package:flutter/material.dart';
import '../const/orientation.dart';
import '../const/ref.dart';
import 'elementsOfScreens/background.dart';
import 'elementsOfScreens/homeScreen/HomeScreenMenu.dart';
import 'elementsOfScreens/homeScreen/LanguageButton.dart';
import 'elementsOfScreens/homeScreen/speak.dart';
import 'elementsOfScreens/homeScreen/vibrationIcon.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomeScreen extends StatefulWidget {

  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  late bool _controller = false;

  @override
  void initState() {
    myOrientationPortrait();
    super.initState();
  }


  @override
  Widget build(BuildContext context) {
    final mainBackground = MainBackground();
    final vibrationIcon = VibrationIcon();
    final languageButton = LanguageButton();

    return Material(
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          mainBackground,
          vibrationIcon,
          languageButton,
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Image.asset(
                    pathNameImage,
                    fit: BoxFit.scaleDown,
                    scale: 3,
                  ),
                  HomeButtonsColumn(),
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
