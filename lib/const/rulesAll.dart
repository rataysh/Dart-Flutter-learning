import 'package:lern_base/classes/rules.dart';

final rulesMeaning = RulesContain(header: 'СМЫСЛ ИГРЫ', description: '''
    Это игра про блеф и ассоциации.
    
Тайное  слово  знают  все,  кроме
одного   игрока   —   зайца.

Найдите  безбилетника,  а  если
заяц   ты  —  притворись  таким
же,  как  все  —  сиди тихо  и  не
выдавай себя!
''');

final rulesGamePlay = RulesContain(
  header: 'ХОД ИГРЫ',
  description: '''
  У всех, кроме одного, на карте 
загадано   тайное   слово. 

Все игроки по очереди называют ассоциации — такие,  чтобы  не 
выдать   тайное   слово. 

Зайцу  нужно  назвать  слово, 
похожее  на  остальные.  Иначе 
он  себя  выдаст.

  ''',
);

final rulesFindeRabbit = RulesContain(
  header: 'НАЙТИ ЗАЙЦА',
  description: '''
  Когда все назвали по слову, голосуйте! Покажите  пальцем  на  того,  кто,  по вашему мнению, заяц. 

Если перевёрнутая карта — карта зайца, вы  загнали  его  в  угол!  Но  если  заяц правильно назовет тайное слово, он ускользает.
 
Если  же  у  зайца  получилось  отгадать тайное    слово,    он    становится 
пойманным зайцем.  И  вы  победили!

  ''',
);
