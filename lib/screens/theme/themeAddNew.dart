
//Testing screen

// import 'package:flutter/material.dart';
// import '../classes/ListTheme.dart';
// import '../const/styles.dart';
// import 'elementsOfScreens/background.dart';
// import 'elementsOfScreens/backButton.dart';
//
// class AddThemeScreen extends StatelessWidget {
//
//   static const double padingForRow = 7.0;
//
//   bool chekValid = false;
//
//   void newNameTheme(value) {
//     nameTheme = value;
//   }
//
//   void addNewWord1(value) {
//     newWord1 = value;
//   }
//
//   void addNewWord2(value) {
//     newWord2 = value;
//   }
//
//   void addNewWord3(value) {
//     newWord3 = value;
//   }
//
//   void addNewWord4(value) {
//     newWord4 = value;
//   }
//
//   void addNewWord5(value) {
//     newWord5 = value;
//   }
//
//   void addNewWord6(value) {
//     newWord6 = value;
//   }
//
//   void addNewWord7(value) {
//     newWord7 = value;
//   }
//
//   void addNewWord8(value) {
//     newWord8 = value;
//   }
//
//   void addNewWord9(value) {
//     newWord9 = value;
//   }
//
//   void addNewWord10(value) {
//     newWord10 = value;
//   }
//
//   void addNewWord11(value) {
//     newWord11 = value;
//   }
//
//   void addNewWord12(value) {
//     newWord12 = value;
//   }
//
//   void addNewWord13(value) {
//     newWord13 = value;
//   }
//
//   void addNewWord14(value) {
//     newWord14 = value;
//   }
//
//   void addNewWord15(value) {
//     newWord15 = value;
//   }
//
//   void addNewWord16(value) {
//     newWord16 = value;
//   }
//
//   void chekValidFunc() {
//     for (var i in newWorlds) {
//       if (i.replaceAll(' ', '') == '') {
//         chekValid = true;
//       }
//       ;
//     }
//     ;
//     if (nameTheme.replaceAll(' ', '') == '') {
//       chekValid = true;
//     };
//   }
//
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   themeController.addListener(() => setState(() {}));
//   // }
//
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: Stack(
//         alignment: Alignment.center,
//         children: [
//           MainBackground(),
//           ListView(
//             padding: mySecondaryScreensPadding,
//             physics: const BouncingScrollPhysics(),
//             children: [
//               Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newNameThemeTextField(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField1(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField2(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField3(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField4(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField5(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField6(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField7(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField8(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField9(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField10(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField11(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField12(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField13(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField14(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField15(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(padingForRow),
//                     child: newWordTextField16(),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.fromLTRB(100, 20, 100, 10),
//                     child: ElevatedButton(
//                       style: mainMenuButtonStyle,
//                       onPressed: () {
//                         // print(nameTheme);
//                         chekValidFunc();
//                         if (chekValid == true) {
//                           showDialog(
//                             context: context,
//                             builder: (_) => const AlertDialog(
//                               title: Text('Есть незаполненые поля'),
//                               content: Text('Проверте внимательнее'),
//                             ),
//                             anchorPoint: Offset(1000, 1000),
//                           );
//                         } else {
//                           var testVar = ListTheme(
//                             name: nameTheme,
//                             allElements: newWorlds,
//                           );
//                           print(testVar.dict);
//                         }
//                         ;
//                       },
//                       child: const Text(
//                         'Добавить',
//                         style: mainMenuButtonTextStyle,
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ],
//           ),
//           MyBackButton(),
//         ],
//       ),
//     );
//   }
//
//   Widget newNameThemeTextField() => TextField(
//     // controller: themeController,
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       labelText: 'Тема',
//       labelStyle: TextStyle(color: Colors.black),
//       // suffixIcon: themeController.text.isEmpty
//       //     ? Container(width: 0)
//       //     : IconButton(
//       //         icon: const Icon(Icons.close, color: Colors.black,),
//       //         onPressed: () => themeController.clear(),
//       //       ),
//     ),
//     onChanged: newNameTheme,
//     onSubmitted: newNameTheme,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField1() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №1',
//     ),
//     onChanged: addNewWord1,
//     onSubmitted: addNewWord1,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField2() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №2',
//     ),
//     onChanged: addNewWord2,
//     onSubmitted: addNewWord2,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField3() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №3',
//     ),
//     onChanged: addNewWord3,
//     onSubmitted: addNewWord3,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField4() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №4',
//     ),
//     onChanged: addNewWord4,
//     onSubmitted: addNewWord4,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField5() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №5',
//     ),
//     onChanged: addNewWord5,
//     onSubmitted: addNewWord5,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField6() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №6',
//     ),
//     onChanged: addNewWord6,
//     onSubmitted: addNewWord6,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField7() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №7',
//     ),
//     onChanged: addNewWord7,
//     onSubmitted: addNewWord7,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField8() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №8',
//     ),
//     onChanged: addNewWord8,
//     onSubmitted: addNewWord8,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField9() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №9',
//     ),
//     onChanged: addNewWord9,
//     onSubmitted: addNewWord9,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField10() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №10',
//     ),
//     onChanged: addNewWord10,
//     onSubmitted: addNewWord10,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField11() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №11',
//     ),
//     onChanged: addNewWord11,
//     onSubmitted: addNewWord11,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField12() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №12',
//     ),
//     onChanged: addNewWord12,
//     onSubmitted: addNewWord12,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField13() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №13',
//     ),
//     onChanged: addNewWord13,
//     onSubmitted: addNewWord13,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField14() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №14',
//     ),
//     onChanged: addNewWord14,
//     onSubmitted: addNewWord14,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField15() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №15',
//     ),
//     onChanged: addNewWord15,
//     onSubmitted: addNewWord15,
//     textInputAction: TextInputAction.next,
//   );
//
//   Widget newWordTextField16() => TextField(
//     decoration: const InputDecoration(
//       focusedBorder: myBorderStyleForAddTheme,
//       enabledBorder: myBorderStyleForAddTheme,
//       border: myBorderStyleForAddTheme,
//       hintText: 'Слово №16',
//     ),
//     onChanged: addNewWord16,
//     onSubmitted: addNewWord16,
//   );
// }
//
// String nameTheme = '';
// String newWord1 = '';
// String newWord2 = '';
// String newWord3 = '';
// String newWord4 = '';
// String newWord5 = '';
// String newWord6 = '';
// String newWord7 = '';
// String newWord8 = '';
// String newWord9 = '';
// String newWord10 = '';
// String newWord11 = '';
// String newWord12 = '';
// String newWord13 = '';
// String newWord14 = '';
// String newWord15 = '';
// String newWord16 = '';
// List<String> newWorlds = [
//   newWord1,
//   newWord2,
//   newWord3,
//   newWord4,
//   newWord5,
//   newWord6,
//   newWord7,
//   newWord8,
//   newWord9,
//   newWord10,
//   newWord11,
//   newWord12,
//   newWord13,
//   newWord14,
//   newWord15,
//   newWord16,
// ];
