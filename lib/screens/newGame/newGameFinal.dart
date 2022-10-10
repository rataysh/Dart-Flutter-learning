import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../const/slyles.dart';

class NewGameFinal extends StatelessWidget {
  const NewGameFinal({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Stack(
        fit: StackFit.passthrough,
        children: [
          Container(
            decoration: const BoxDecoration(
              color: colorBackgroundMain,
            ),
            child: Text('eddddd'),
          ),
        ],
      ),
    );
  }
}
