import 'package:flutter/material.dart';
import '../const/slyles.dart';
import 'elementsOfScreens/background.dart';
import 'elementsOfScreens/backButton.dart';

class AddThemeScreen extends StatefulWidget {
  const AddThemeScreen({Key? key}) : super(key: key);

  @override
  State<AddThemeScreen> createState() => _AddThemeScreen();
}

class _AddThemeScreen extends State<AddThemeScreen> {

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final _controllerName = TextEditingController();
  String temporaryName = '';
  List<String> temporaryList = [];
  String testError = '';

  void addName(voidVar) {
    setState(() {
      temporaryName = voidVar;
    });
    // print(temporaryName);
  }

  void addList(voidVar) {
    setState(() {
      temporaryList.add(voidVar);
    });
  }

  void checkName(voidVar) {
    if (voidVar.trim().isEmpty) {
      print(errorTextResult());
    } else {
      addName(voidVar);
      return;
    }
  }

  String errorTextResult() {
    return "ERROR";
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        children: [
          MainBackground(),
          Form(
            key: _formKey,
            child: ListView(
              padding: mySecondaryScreensPadding,
              physics: const BouncingScrollPhysics(),
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    TextFormField(
                      controller: _controllerName,
                      decoration: const InputDecoration(
                        hintText: "Введите название темы",
                        focusedBorder: myBorderStyleForAddTheme,
                        enabledBorder: myBorderStyleForAddTheme,
                      ),
                      validator: (value) {
                        if (value.toString().trim().isEmpty) {
                          return 'Text Error';
                        } else {
                          return null;
                        }
                      },
                      // onSubmitted: checkName,
                    ),
                    SizedBox(height: 40,),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №1",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №2",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №3",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №4",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №5",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №6",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №7",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №8",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №9",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №10",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №11",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №12",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №13",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №14",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №15",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    // TextField(
                    //   decoration: const InputDecoration(
                    //     hintText: "Слово №16",
                    //     focusedBorder: myBorderStyleForAddTheme,
                    //     enabledBorder: myBorderStyleForAddTheme,
                    //   ),
                    //   onSubmitted: addList,
                    // ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(100, 20, 100, 10),
                      child: ElevatedButton(
                        style: mainMenuButtonStyle,
                        onPressed: () {
                          if (!_formKey.currentState.validate()) {
                            return;
                          }
                        },
                        child: const Text(
                          'Добавить',
                          style: mainMenuButtonTextStyle,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          MyBackButton(),
        ],
      ),
    );
  }
}
