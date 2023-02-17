import 'package:Rabbit/const/SharedPreferenceConst.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../const/orientation.dart';
import '../const/ref.dart';
import 'elementsOfScreens/backgroundWithNoImage.dart';
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
    //Change localization
    curLang == 0
        ? context.setLocale(Locale("ru"))
        : context.setLocale(Locale("en"));
    setState(() {
      _curLang = curLang;
    });
  }

  @override
  Widget build(BuildContext context) {
    final mainBackground = BackgroundWithNoOpacity();
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
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.15,
              ),
              Image.asset(
                _curLang == 0 ? pathNameImage : pathNameEngImage,
                // width: MediaQuery.of(context).size.width * 0.7,
                height: MediaQuery.of(context).size.height * 0.15,
                fit: BoxFit.contain,
              ),
              HomeButtonsColumn(),
              GestureDetector(
                onTap: () => setState(() => _controller = !_controller),
                child: Image.asset(
                  alignment: Alignment.bottomCenter,
                  pathBodyRabImage,
                  height: MediaQuery.of(context).size.height * 0.38,
                  fit: BoxFit.contain,
                ).animate(target: _controller ? 1 : 0).shakeY(hz: 5),
              ),
            ],
          ),
          SpeakCloud()
              .animate(target: _controller ? 1 : 0)
              .slideX(begin: 0.75, end: 0.75)
              .slideY(begin: -1.2, end: -1.2)
              .fade(begin: 0, end: 1, duration: 200.ms)
              .shimmer(duration: 1200.ms)
              .then(delay: 1200.ms)
              .fade(begin: 1, end: 0, duration: 200.ms),
        ],
      ),
    );
  }
}
