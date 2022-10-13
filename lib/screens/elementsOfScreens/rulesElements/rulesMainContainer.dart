import 'package:flutter/cupertino.dart';
import '../../../const/slyles.dart';

rulesMainContainerText(double screenWidth, double screenHeight, rulesPart) {
  return Container(
    padding: const EdgeInsets.fromLTRB(1, 0, 1, 0),
    alignment: Alignment.center,
    width: screenWidth * 0.85,
    height: screenHeight,
    decoration: boxDecorationRulesContainer,
    child: Column(
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          rulesPart.header,
          style: textStyleHeaderRules,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(
          rulesPart.description,
          style: textStyleDescriptionRules,
        ),
      ],
    ),
  );
}
