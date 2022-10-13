import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import '../../../const/slyles.dart';


eachThemeForm(data) {
  return
    TextField(
      enabled: false,
      // textAlign: TextAlign.center,
      decoration: InputDecoration(
        filled: true, //<-- SEE HERE
        fillColor: Colors.white70,
        // alignLabelWithHint: false,
        focusedBorder: myBorderStyleForAddTheme,
        enabledBorder: myBorderStyleForAddTheme,
        disabledBorder: myBorderStyleForAddTheme,
        border: myBorderStyleForAddTheme,
        labelText: data,
        labelStyle: textStyleEachThemeElements,
      ),
    );
}

eachThemeFormHeader(data, context) {
  return
    TextField(
      enabled: false,
      textAlign: TextAlign.center,
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.only(left: 10),
        focusedBorder: themeEachBorderHeader,
        enabledBorder: themeEachBorderHeader,
        disabledBorder: themeEachBorderHeader,
        border: themeEachBorderHeader,
        labelText: data,
        labelStyle: textStyleEachThemeHeader,
      ),
    );
}