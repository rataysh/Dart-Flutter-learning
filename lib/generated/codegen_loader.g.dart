// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> en = {
  "homeScreenNewGame": "New game",
  "homeScreenThemes": "Topics",
  "homeScreenRules": "Rules",
  "homeScreenRabSpeak": "Let's play!",
  "newGameNumbersPlayers": "Select the number of players",
  "newGameSelectTopic": "Choose a topic",
  "newGameNext": "Next step",
  "newGamePlayer": "Player",
  "newGameCardFrontSide": "Click on the card,\nto find out the word,\nand pass it to the next player",
  "newGameYouAreRab": "You're a rabbit",
  "rulesHeaderMeaning": "THE MEANING",
  "rulesHeaderPlay": "GAME MOVE",
  "rulesHeaderFindRab": "FIND THE RABBIT",
  "rulesDescriptionMeaning": "This is a game about deception and deduction.\n\nAll players know the secret word except Rabbit.\n\nFind out the identity of the Rabbit, and if you are the Rabbit, blend in with the crowd, keep your cool and avoid detection!",
  "rulesDescriptionPlay": "All but one has a secret word on the card.\n\nAll players take turns naming associations that look like the secret word, but without giving it away.\n\nThe task of the 'rabbit' is to name a word similar to the others, otherwise he will give himself away.",
  "rulesDescriptionRab": "When everyone has said their word, vote! Point to the one you think is the rabbit.\n\nIf the player with the most votes is the rabbit, he may try to guess the secret word.\n\nIf the rabbit guesses correctly, he wins.\nIf the rabbit fails to guess correctly, you win!"
};
static const Map<String,dynamic> ru = {
  "homeScreenNewGame": "Новая игра",
  "homeScreenThemes": "Темы",
  "homeScreenRules": "Правила",
  "homeScreenRabSpeak": "Давай\nиграть!",
  "newGameNumbersPlayers": "Выберите количество игроков",
  "newGameSelectTopic": "Выберите тему",
  "newGameNext": "Далее",
  "newGamePlayer": "Игрок",
  "newGameCardFrontSide": "Нажми на карточку,\nчтобы узнать слово,\nи передай следующему игроку",
  "newGameYouAreRab": "Ты заяц",
  "rulesHeaderMeaning": "СМЫСЛ ИГРЫ",
  "rulesHeaderPlay": "ХОД ИГРЫ",
  "rulesHeaderFindRab": "НАЙТИ ЗАЙЦА",
  "rulesDescriptionMeaning": "Это игра про блеф и ассоциации.\n\nТайное слово знают все, кроме одного игрока — зайца.\n\nНайдите безбилетника, а если заяц ты — притворись таким же, как все — сиди тихо и не выдавай себя!",
  "rulesDescriptionPlay": "У всех, кроме одного, на карте загадано тайное слово.\n\nВсе игроки по очереди называют ассоциации — такие, чтобы не выдать тайное слово.\n\nЗайцу нужно назвать слово, похожее на остальные. Иначе он себя выдаст.",
  "rulesDescriptionRab": "Когда все назвали по слову, голосуйте! Покажите пальцем на того, кто, по вашему мнению, заяц.\n\nЕсли игрок за которого проголосовало большинство, оказался зайцем, он должен назвать тайное слово. В случае, если заяц угадал, он выигрывает.\n\nЕсли же у зайца не получилось отгадать, то вы победили!"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"en": en, "ru": ru};
}
