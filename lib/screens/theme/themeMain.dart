// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:vibration/vibration.dart';
import '../../classes/AllTheme.dart';
import '../../const/SharedPreferenceConst.dart';
import '../../const/styles.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/MainBackground.dart';

class ThemeMain extends StatefulWidget {
  const ThemeMain({Key? key}) : super(key: key);

  @override
  State<ThemeMain> createState() => _ThemeMainState();
}

class _ThemeMainState extends State<ThemeMain> {
  double _backButtonTop = 0;
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateBackButtonTop);
  }

  void _updateBackButtonTop() {
    setState(() {
      _backButtonTop = 0 - _scrollController.offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView.builder(
            controller: _scrollController,
            padding: mySecondaryScreensPadding,
            physics: const BouncingScrollPhysics(),
            itemCount: myAllTheme.languageTheme.length,
            itemBuilder: (_, index) => Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.only(right: 15.0, left: 15.0),
                  child: ElevatedButton(
                    onPressed: () {
                      Vibration.vibrate(duration: durationVibration);
                      Navigator.pushNamed(context, '/themeEach',
                          arguments: index);
                    },
                    style: themeMenuButtonStyle,
                    child: Text(
                      myAllTheme.languageTheme[index].name,
                      style: mainMenuButtonTextStyle,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: _backButtonTop,
            child: MyBackButton(),
          ),
        ],
      ),
    );
  }
}
