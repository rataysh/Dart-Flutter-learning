// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:lern_base/const/rulesAll.dart';
import 'package:lern_base/screens/elementsOfScreens/background.dart';
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
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var screenWidth = MediaQuery.of(context).size.width;
    var screenHeight = MediaQuery.of(context).size.height;
    // print(screenWidth);
    // print(screenHeight);

    setState(() {
      myOrientationPortrait();
    });
    return Material(
      child: Stack(
        children: [
          MainBackground(),
          Swiper(
            loop: false,
            scrollDirection: Axis.horizontal,
            pagination: SwiperPagination(
              margin: EdgeInsets.only(bottom: screenHeight / 3.3),
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
              return Center(
                child: Padding(
                  padding: EdgeInsets.fromLTRB(screenWidth / 50, screenHeight / 7.5,
                      screenWidth / 50, screenHeight / 3.5),
                  child: rulesMainContainerText(
                      screenWidth, screenHeight, rulesAll[index]),
                ),
              );
            }
          ),
          rulesMainContainerImage(screenWidth, pathHandRabImage),
          // pathRunRabImage
          // pathBackRabImage
          // pathHandRabImage
          MyBackButton(), // separatorBuilder: (_, __) => const Divider(),
        ],
      ),
    );
  }
}
