import 'package:flutter/material.dart';
import '../../const/ref.dart';
import '../../const/styles.dart';

class MainBackground extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorBackgroundMain,
        image: DecorationImage(
          image: Image.asset(pathBackgroundImage).image,
          alignment: Alignment.bottomCenter,
          fit: BoxFit.contain,
          colorFilter: const ColorFilter.linearToSrgbGamma(),
          opacity: 0.5,
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Image.asset(
                  pathCloudLeftImage,
                ),
              ),
              Expanded(
                child: Image.asset(
                  pathCloudRightImage,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
