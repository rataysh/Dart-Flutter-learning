import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import '../../../const/styles.dart';

class RulesMainContainerText extends StatelessWidget {
  final double screenWidth;
  final double screenHeight;
  final rulesPart;

  const RulesMainContainerText(
      {Key? key,
      required this.screenHeight,
      required this.rulesPart,
      required this.screenWidth})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(24, 0, 24, 0),
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
          Expanded(
            child: AutoSizeText(
              rulesPart.description,
              style: textStyleDescriptionRules,
            ),
          ),
        ],
      ),
    );
  }
}

// rulesMainContainerText(double screenWidth, double screenHeight, rulesPart) {
//
// }
