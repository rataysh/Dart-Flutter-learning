import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../const/ref.dart';
import '../../const/slyles.dart';

class MainBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("ЗАЯЦ"),
          centerTitle: true,
          backgroundColor: colorBackgroundMain,
          toolbarOpacity: 1,
          toolbarHeight: 0,
        ),
        body: Stack(
          fit: StackFit.passthrough, //NEED TO THE TEST
          children: [
            Container(
              decoration: BoxDecoration(
                color: colorBackgroundMain,
                image: DecorationImage(
                  image: Image.asset(pathBackgroundImage).image,
                  alignment: Alignment.bottomCenter,
                  fit: BoxFit.scaleDown,
                  colorFilter: const ColorFilter.linearToSrgbGamma(),
                ),
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        pathCloudLeftImage,
                        fit: BoxFit.scaleDown,
                        scale: 3.5,
                      ),
                      Image.asset(
                        pathCloudRightImage,
                        scale: 3.5,
                        fit: BoxFit.scaleDown,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
