import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import '../../classes/RulesContain.dart';
import '../../generated/locale_keys.g.dart';
import '../../screens/elementsOfScreens/MainBackground.dart';
import '../../const/orientation.dart';
import '../../const/ref.dart';
import '../../const/styles.dart';
import '../elementsOfScreens/backButton.dart';
import '../elementsOfScreens/rulesElements/rulesMainContainer.dart';
import '../elementsOfScreens/rulesElements/rulesMainImageRab.dart';

class RulesMain extends StatefulWidget {
  const RulesMain({Key? key}) : super(key: key);

  @override
  State<RulesMain> createState() => _RulesMainState();
}

class _RulesMainState extends State<RulesMain> {
  final rulesMeaning = RulesContain(
      header: LocaleKeys.rulesHeaderMeaning.tr(),
      description: LocaleKeys.rulesDescriptionMeaning.tr());

  final rulesGamePlay = RulesContain(
      header: LocaleKeys.rulesHeaderPlay.tr(),
      description: LocaleKeys.rulesDescriptionPlay.tr());

  final rulesFindRabbit = RulesContain(
      header: LocaleKeys.rulesHeaderFindRab.tr(),
      description: LocaleKeys.rulesDescriptionRab.tr());

  @override
  void initState() {
    super.initState();
    myOrientationPortrait();
  }

  @override
  Widget build(BuildContext context) {
    List<RulesContain> rulesAll = [
      rulesMeaning,
      rulesGamePlay,
      rulesFindRabbit
    ];
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    // print(screenWidth);
    // print(screenHeight);
    return Material(
      child: Stack(
        alignment: AlignmentDirectional.bottomCenter,
        children: [
          MainBackground(),
          Padding(
            padding: const EdgeInsets.only(
                top: 90.0, bottom: 180, right: 24, left: 24),
            child: Swiper(
                loop: false,
                scrollDirection: Axis.horizontal,
                pagination: SwiperPagination(
                  // margin: EdgeInsets.only(bottom: 180),
                  builder: const DotSwiperPaginationBuilder(
                    color: colorBackgroundButton,
                    size: 10,
                    activeColor: colorRulesHeaderText,
                    activeSize: 15,
                  ),
                ),
                layout: SwiperLayout.DEFAULT,
                itemCount: 3,
                itemBuilder: (_, index) {
                  return RulesMainContainerText(
                    screenHeight: screenHeight,
                    rulesPart: rulesAll[index],
                    screenWidth: screenWidth,
                  );
                }),
          ),
          rulesMainContainerImage(screenWidth, pathHandRabImage),
          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}
