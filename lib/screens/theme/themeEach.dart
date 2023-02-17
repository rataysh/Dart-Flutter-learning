// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../classes/AllTheme.dart';
import '../../const/styles.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/MainBackground.dart';
import '../elementsOfScreens/themeElements/eachThemePart.dart';

class ThemeEach extends StatefulWidget {
  @override
  State<ThemeEach> createState() => _ThemeEachState();
}

class _ThemeEachState extends State<ThemeEach> {
  double _backButtonTop = 0;
  final ScrollController _scrollController = ScrollController();

  @override
  void dispose() {
    _scrollController.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _scrollController.addListener(_updateBackButtonTop);
  }

  void _updateBackButtonTop() {
    setState(() {
      _backButtonTop = 0 - _scrollController.offset;
    });
  }

  @override
  Widget build(BuildContext context) {
    final argumentsIndexTheme =
        (ModalRoute.of(context)?.settings.arguments ?? 0) as int;

    return Material(
      child: Stack(
        children: [
          MainBackground(),
          ListView.builder(
            controller: _scrollController,
            padding: mySecondaryScreensPadding,
            physics: const BouncingScrollPhysics(),
            itemCount: myAllTheme
                    .languageTheme[argumentsIndexTheme].allElements.length+1,
            itemBuilder: (_, index) => Padding(
              padding: const EdgeInsets.only(right: 15.0, left: 15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                // mainAxisSize: MainAxisSize.max,
                children: [
                  index == 0
                      ? eachThemeFormHeader(
                          myAllTheme.languageTheme[argumentsIndexTheme].name,
                      context)
                      : eachThemeForm(myAllTheme
                          .languageTheme[argumentsIndexTheme].allElements[index-1].toString()),
                  const SizedBox(
                    height: 10,
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: _backButtonTop,
            child: MyBackButton(),
          ),
          // ChangeThemeButton(),// separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}
