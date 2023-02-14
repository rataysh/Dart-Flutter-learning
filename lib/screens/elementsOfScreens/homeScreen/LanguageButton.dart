import 'package:Rabbit/classes/AllTheme.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../../const/SharedPreferenceConst.dart';
import '../../../const/ref.dart';


class LanguageButton extends StatefulWidget {
  const LanguageButton({Key? key}) : super(key: key);

  @override
  State<LanguageButton> createState() => _LanguageButtonState();
}

class _LanguageButtonState extends State<LanguageButton> {
  late int _curLang = 0;

  @override
  void initState() {
    super.initState();
    _initLang();
    myAllTheme.updateLanguage();
  }

  Future _initLang() async {
    _curLang = await getCurLang();
  }

  // Future<int> getCurLang() async {
  //   var prefs = await SharedPreferences.getInstance();
  //   return prefs.getInt(currentLanguageKey) ?? 0;
  // }

  Future _setCurLang() async {
    var prefs = await SharedPreferences.getInstance();
    prefs.setInt(
        currentLanguageKey, _curLang == 0 ? _curLang = 1 : _curLang = 0);
  }

  void _changeLanguage() async {
    await _setCurLang();
    print(_curLang);
    await myAllTheme.updateLanguage();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 25.0,
      right: 10.0,
      child: GestureDetector(
        onTap: () {
          _changeLanguage();
        },
        child: Container(
          width: 36,
          height: 36,
          child: Image.asset(
            _curLang == 0 ? pathRuImage : pathEngImage,
            fit: BoxFit.contain,
            // scale: 3,
          ),
        ),
      ),
    );
  }
}