import 'package:shared_preferences/shared_preferences.dart';
import '../const/SharedPreferenceConst.dart';
import '../const/standardTheme.dart';
import '../const/standardThemeEng.dart';


class AllTheme {
  List engTheme;
  List ruTheme;
  int curLanguage;

  AllTheme(
      {required this.engTheme,
      required this.ruTheme,
      required this.curLanguage});

  Future<void> updateLanguage() async {
    var prefs = await SharedPreferences.getInstance();
    curLanguage = prefs.getInt(currentLanguageKey) ?? 0;
  }

  List get languageTheme {
    if (curLanguage == 0) {
      return ruTheme;
    } else {
      return engTheme;
    }
  }
}

var myAllTheme =
    AllTheme(engTheme: engTheme, ruTheme: ruTheme, curLanguage: 0);

final List ruTheme = [
  standardThemeDrink,
  standardThemeJobs,
  standardThemeAqua,
  standardThemeTypeOfFilm,
  standardThemeBuildings,
  standardThemeAuthors,
  standardThemeTypeOfArts,
  standardThemeMood,
  standardThemeFood,
  standardThemeRooms,
  standardThemeFilms,
  standardThemeHobby,
  standardTheme,
  standardThemeCity,
  standardThemeSportsmen,
  standardThemeHistoricalPerson,
  standardThemeTransport,
  standardThemeSchoolTheme,
  standardThemeNature,
  standardThemeAnimals,
  standardThemeTech,
  standardThemeDesserts,
];

final List engTheme = [
  standardThemeDrinkEng,
];
