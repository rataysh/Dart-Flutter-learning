import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../const/slyles.dart';


eachThemeForm(data) {
  return
    TextField(
      enabled: false,
      // textAlign: TextAlign.center,
      decoration: InputDecoration(
        // alignLabelWithHint: false,
        focusedBorder: myBorderStyleForAddTheme,
        enabledBorder: myBorderStyleForAddTheme,
        disabledBorder: myBorderStyleForAddTheme,
        border: myBorderStyleForAddTheme,
        labelText: data,
        labelStyle: eachThemeHeaderTextStyle,
      ),
    );
}