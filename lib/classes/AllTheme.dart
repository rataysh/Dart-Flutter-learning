import '../const/standartTheme.dart';
import '../const/standartThemeEng.dart';


// Класс содержащий все темы
class AllTheme {
  List listAllTheme;


  AllTheme({required this.listAllTheme});

}


// Добавляю стадартные темы
var myAllTheme = AllTheme(listAllTheme: languageTheme);

final languageTheme = engTheme;

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
    // standardThemeMusicalInstruments,
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


