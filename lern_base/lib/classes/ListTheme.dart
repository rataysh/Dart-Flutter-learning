// Класс для каждой темы
class ListTheme {
  Map<String, List>? dict;
  String name;
  List<String> allElements;

  ListTheme({required this.name, required this.allElements}) {
    name = name[0].toUpperCase() + name.substring(1).toLowerCase();
    dict = {
      name = name[0].toUpperCase() + name.substring(1).toLowerCase():
          allElements.length == 16
              ? allElements = allElements
              : allElements = List.filled(16, '0')
    };
  }
}

