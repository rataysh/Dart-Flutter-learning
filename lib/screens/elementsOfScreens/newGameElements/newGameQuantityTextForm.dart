// import 'package:flutter/cupertino.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import '../../../const/styles.dart';
import '../../../generated/locale_keys.g.dart';


newGameQuantityTextForm(int index, onUpdate) {
  var key = index + 1;
  return TextField(
    style: textStyleEachThemeElements,
    enabled: true,
    decoration: InputDecoration(
      filled: true,
      fillColor: Colors.white70,
      focusedBorder: myBorderStyleForAddTheme,
      enabledBorder: myBorderStyleForAddTheme,
      disabledBorder: myBorderStyleForAddTheme,
      border: myBorderStyleForAddTheme,
      hintText: LocaleKeys.newGamePlayer.tr() + " $key",
      hintStyle: textStyleEachThemeElements,
      suffixIcon: const Icon(
        Icons.create,
      ),
    ),
    onChanged: (val) {
      onUpdate(key, val);
    },
  );
}