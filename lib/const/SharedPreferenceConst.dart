import 'package:shared_preferences/shared_preferences.dart';

var durationVibration = 0;
// var curLanguage = 0;
// const durationVibrationKey = 'vibration';

// Language
const currentLanguageKey = 'language';
Future<int> getCurLang() async {
  var prefs = await SharedPreferences.getInstance();
  return prefs.getInt(currentLanguageKey) ?? 0;
}