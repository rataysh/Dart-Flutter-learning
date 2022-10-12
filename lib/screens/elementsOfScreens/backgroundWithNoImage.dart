import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../const/slyles.dart';

class BackgroundWithNoImage extends StatelessWidget {
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
                ),
              // child:
            ),
          ],
        ),
      ),
    );
  }
}
