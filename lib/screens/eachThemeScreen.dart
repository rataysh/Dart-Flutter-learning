import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lern_base/screens/themeScreen.dart';
import '../const/slyles.dart';
import 'elementsOfScreens/backButton.dart';
import 'elementsOfScreens/background.dart';
import 'elementsOfScreens/changeThemeButton.dart';

class EachThemeScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView.builder(
            padding: mySecondaryScreensPadding,
            physics: const BouncingScrollPhysics(),
            itemCount: dataKindOfTheme.values.toList()[0].length+1,
            itemBuilder: (_, index) => Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                index == 0
                ? TextField(
                  enabled: false,
                  // textAlign: TextAlign.right,
                  decoration: InputDecoration(
                    // alignLabelWithHint: false,
                    focusedBorder: myBorderStyleForAddTheme,
                    enabledBorder: myBorderStyleForAddTheme,
                    disabledBorder: myBorderStyleForAddTheme,
                    border: myBorderStyleForAddTheme,
                    labelText: dataKindOfTheme.keys.toList()[0],
                    labelStyle: eachThemeHeaderTextStyle,
                  ),
                )
                : TextField(
                  enabled: false,
                  // textAlign: TextAlign.center,
                  decoration: InputDecoration(
                    focusedBorder: myBorderStyleForAddTheme,
                    enabledBorder: myBorderStyleForAddTheme,
                    disabledBorder: myBorderStyleForAddTheme,
                    border: myBorderStyleForAddTheme,
                    labelText: dataKindOfTheme.values.toList()[0][index-1],
                    labelStyle: eachThemeTextStyle,
                  ),
                ),
                const SizedBox(
                  height: 10,
                )
              ],
            ),
          ),
          MyBackButton(),
          ChangeThemeButton(),// separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}

// dataKindOfTheme.values.toList()[0][index]

// class EachThemeScreen extends StatefulWidget {
//   const EachThemeScreen({Key? key}) : super(key: key);
//
//   @override
//   State<EachThemeScreen> createState() => _EachThemeScreen();
// }
//
// class _EachThemeScreen extends State<EachThemeScreen> {
//   final themeController = TextEditingController();
//
//   static const double padingForRow = 7.0;
//
//   @override
//   void initState() {
//     super.initState();
//   }
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
//                     child: ElevatedButton(
//                       onPressed: () {
//                         print(dataKindOfTheme.keys);
//                       },
//                       child: Text('TEST'),
//                     ),
//                   ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField1(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField2(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField3(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField4(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField5(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField6(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField7(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField8(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField9(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField10(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField11(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField12(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField13(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField14(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField15(),
//                   // ),
//                   // Padding(
//                   //   padding: const EdgeInsets.all(padingForRow),
//                   //   child: newWordTextField16(),
//                   // ),
//                 ],
//               ),
//             ],
//           ),
//           MyBackButton(),
//         ],
//       ),
//     );
//   }
// }
