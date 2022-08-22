import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../const/slyles.dart';

class MyBackButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.topLeft,
      padding: const EdgeInsets.all(10.0),
      margin: const EdgeInsets.fromLTRB(0, 30, 0, 0),
      child: IconButton(
        iconSize: 40,
        color: colorBackgroundButton,
        icon: const Icon(
          Icons.arrow_back,
        ),
        onPressed: () {
          // BuildContext context;
          Navigator.pop(context);
        },
      ),
    );
  }
}

