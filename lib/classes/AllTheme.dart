import '../const/standartTheme.dart';


// Класс содержащий все темы
class AllTheme {
  List listAllTheme;


  AllTheme({required this.listAllTheme});

}


// Добавляю стадартные темы
var myAllTheme = AllTheme(listAllTheme: [
  standartThemeDrink,
  standartThemeJobs,
  standartThemeAqua,
]
);

