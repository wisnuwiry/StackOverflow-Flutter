import 'package:flutter/material.dart';

import '../../common.dart';

/// Base theme LightTheme app
/// If your call ThemeData you mus add suffix () in this class
/// Example `LightTheme()()`
class LightTheme {
  /// Root data theme Theme Data
  ThemeData call() => ThemeData.light().copyWith(
        primaryColor: AppColors.primaryColor,
        scaffoldBackgroundColor: AppColors.backgroundLightColor,
        disabledColor: AppColors.disabledLightColor,
        cardTheme: card,
        textTheme: text,
        buttonTheme: button,
        dividerTheme: divider,
        appBarTheme: appBar,
        bottomSheetTheme: sheet,
      );

  /// Default Card Theme in LightTheme
  static CardTheme card = CardTheme(
      color: AppColors.cardLightColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(Dimens.roundCard),
        side: BorderSide.none,
      ));

  /// Text style theme for LightTheme
  static TextTheme text = TextTheme(
    bodyText1:
        TextStyle(color: AppColors.textLightColor, fontSize: Dimens.dp12),
    // Style theme for default [Text] Widget and style for widget BodyText
    bodyText2:
        TextStyle(color: AppColors.textLightColor, fontSize: Dimens.dp12),
    headline6: TextStyle(
        color: AppColors.textLightColor,
        fontSize: Dimens.dp16,
        fontWeight: FontWeight.bold),
    headline5: TextStyle(
        color: AppColors.textLightColor,
        fontSize: Dimens.dp22,
        fontWeight: FontWeight.bold),
    button: TextStyle(fontSize: Dimens.dp14, fontWeight: FontWeight.bold),
  );

  /// ThemeData button for LightTheme
  static ButtonThemeData button = ButtonThemeData(
    padding:
        EdgeInsets.symmetric(vertical: Dimens.dp12, horizontal: Dimens.dp24),
    shape: RoundedRectangleBorder(
        side: BorderSide.none,
        borderRadius: BorderRadius.circular(Dimens.roundButton)),
  );

  /// Default divider theme for LightTheme
  static DividerThemeData divider = DividerThemeData(
    color: AppColors.backgroundLightColor,
    thickness: 1,
  );

  /// AppBar Theme for Light Theme
  static AppBarTheme appBar = AppBarTheme(
      color: AppColors.backgroundLightColor,
      elevation: 0,
      brightness: Brightness.light,
      textTheme: text.copyWith(
          headline5: text.headline5.copyWith(color: AppColors.textLightColor)),
      iconTheme: IconThemeData(
        color: AppColors.textLightColor,
      ));

  /// Bottom Sheet theme data
  static BottomSheetThemeData sheet = BottomSheetThemeData(
    shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(top: Radius.circular(Dimens.dp24))),
  );
}
