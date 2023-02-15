import 'package:Rabbit/const/SharedPreferenceConst.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
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
  late int _curLang = 0;

  @override
  void initState() {
    super.initState();
    myOrientationPortrait();
    _initLang();
  }

  Future _initLang() async {
    await updateLanguage();
  }

  Future updateLanguage() async {
    var prefs = await SharedPreferences.getInstance();
    var curLang = prefs.getInt(currentLanguageKey) ?? 0;
    setState(() {
      _curLang = curLang;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mainBackground = MainBackground();
    final vibrationIcon = VibrationIcon();
    final languageButton = LanguageButton(updateLanguage: updateLanguage);

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
                  Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: Image.asset(
                      _curLang == 0 ? pathNameImage : pathNameEngImage,
                      fit: BoxFit.contain,
                    ),
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
