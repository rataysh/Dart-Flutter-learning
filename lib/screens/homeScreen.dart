import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lern_base/screens/themeScreen.dart';
import '../const/ref.dart';
import '../const/slyles.dart';
import '../const/standartTheme.dart';
import 'addThemeScreen.dart';
import 'elementsOfScreens/background.dart';


class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
          alignment: Alignment.bottomCenter,
        children: [
          MainBackground(),
          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            // crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    pathNameImage,
                    fit: BoxFit.scaleDown,
                    scale: 3,
                  ),
                  Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(
                          style: mainMenuButtonStyle,
                          onPressed: () {
                            Navigator.pushNamed(context, '/newGame');
                          },
                          child: const Text(
                            'Новая игра',
                            style: mainMenuButtonTextStyle,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(
                          style: mainMenuButtonStyle,
                          onPressed: () {
                            Navigator.pushNamed(context, '/theme');
                            // Navigator.push(
                            //     context,
                            //     CupertinoPageRoute(
                            //         builder: (context) => ThemeScreen()));
                          },
                          child: const Text(
                            'Темы',
                            style: mainMenuButtonTextStyle,
                          ),
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(6.0),
                        child: ElevatedButton(
                          style: mainMenuButtonStyle,
                          onPressed: () {

                          },
                          child: const Text(
                            'Правила',
                            style: mainMenuButtonTextStyle,
                          ),
                        ),
                      ),
                    ],
                  ),
                  Image.asset(
                    alignment: Alignment.bottomCenter,
                    pathBodyRabImage,
                    fit: BoxFit.scaleDown,
                    scale: 2.5,
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// class HomeScreen extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Material(
//       child: ClipRRect(
//         child: Stack(
//           alignment: Alignment.bottomCenter,
//           children: [
//             SizedBox.expand(
//               child: Container(
//                 color: colorBackgroundMain,
//               ),
//             ),
//             SizedBox.expand(
//               child: Align(
//                 alignment: const Alignment(0, 1),
//                 child: Opacity(
//                   opacity: 0.6,
//                   child: Image.asset(pathBackgroundImage),
//                 ),
//               ),
//             ),
//             SizedBox.expand(
//               child: Container(
//                 child: Column(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   crossAxisAlignment: CrossAxisAlignment.center,
//                   children: [
//                     Expanded(
//                       flex: 1,
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Container(
//                             child: Image.asset(pathCloudLeftImage),
//                           ),
//                           Container(
//                             child: Image.asset(pathCloudRightImage),
//                           ),
//                         ],
//                       ),
//                     ),
//                     const SizedBox(height: 20),
//                     Expanded(
//                       flex: 1,
//                       child: Container(
//                         child: Image.asset(pathNameImage),
//                       ),
//                     ),
//                     Expanded(
//                       flex: 3,
//                       child: Column(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: [
//                           Container(
//                             padding: EdgeInsets.all(5.0),
//                             child: ElevatedButton(
//                               style: mainMenuButtonStyle,
//                               onPressed: () {
//                                 print(standartThemeAqua.dict);
//                               },
//                               child: const Text(
//                                 'Новая игра',
//                                 style: mainMenuButtonTextStyle,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.all(5.0),
//                             child: ElevatedButton(
//                               style: mainMenuButtonStyle,
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     CupertinoPageRoute(
//                                         builder: (context) => ThemeScreen()));
//                               },
//                               child: const Text(
//                                 'Темы',
//                                 style: mainMenuButtonTextStyle,
//                               ),
//                             ),
//                           ),
//                           Container(
//                             padding: EdgeInsets.all(5.0),
//                             child: ElevatedButton(
//                               style: mainMenuButtonStyle,
//                               onPressed: () {
//                                 Navigator.push(
//                                     context,
//                                     CupertinoPageRoute(
//                                         builder: (context) => AddThemeScreen()));
//                               },
//                               child: const Text(
//                                 'Правила',
//                                 style: mainMenuButtonTextStyle,
//                               ),
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Expanded(
//                       flex: 3,
//                       child: Container(
//                         alignment: Alignment.bottomCenter,
//                         transform: Matrix4.skew(0, 0.06),
//                         child: Image.asset(pathBodyRabImage),
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
