import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class AddNewThemeButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.bottomRight,
      padding: const EdgeInsets.all(10.0),
      child: IconButton(
        iconSize: 80,
        color: Colors.white,
        icon: const Icon(
          Icons.add_circle,
        ),
        tooltip: "Добавить новую тему",
        // hoverColor: Colors.black,
        // splashRadius: 100,
        // splashColor: Colors.blue,
        // highlightColor: Colors.red,
        onPressed: () {
          print('ADD');
        },
      ),
    );
  }
}
