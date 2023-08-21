// Class with colors for theme extensions

import 'package:flutter/material.dart';

/// класс реализует extension для ThemeData. Для удобство использования на уровне
/// виджетов, реализованы методы lerp, copyWith

@immutable
class AppColorScheme extends ThemeExtension<AppColorScheme> {
  final Color? primaryColor;
  final Color? secondaryColor;
  final Color? formBackgroundColor;
  final Color? appBarButtonColor;
  final Color? buttonColor_1;
  final Color? buttonColor_2;
  final Color? headerTextColor;
  final Color? primaryOnLightTextColor;
  final Color? primaryOnDarkTextColor;
  final Color? secondaryTextColor;

  const AppColorScheme(
      { required this.primaryColor,
        required this.secondaryColor,
        required this.formBackgroundColor,
        required this.appBarButtonColor,
        required this.buttonColor_1,
        required this.buttonColor_2,
        required this.headerTextColor,
        required this.primaryOnLightTextColor,
        required this.primaryOnDarkTextColor,
        required this.secondaryTextColor,});

  @override
  AppColorScheme copyWith(
      { Color? primaryColor,
        Color? secondaryColor,
        Color? formBackgroundColor,
        Color? appBarButtonColor,
        Color? buttonColor_1,
        Color? buttonColor_2,
        Color? headerTextColor,
        Color? primaryOnLightTextColor,
        Color? primaryOnDarkTextColor,
        Color? secondaryTextColor,}) {
    return AppColorScheme(
      primaryColor: primaryColor ?? this.primaryColor,
      secondaryColor: secondaryColor ?? this.secondaryColor,
      formBackgroundColor: formBackgroundColor ?? this.formBackgroundColor,
      appBarButtonColor: appBarButtonColor ?? this.appBarButtonColor,
      buttonColor_1: buttonColor_1 ?? this.buttonColor_1,
      buttonColor_2: buttonColor_2 ?? this.buttonColor_2,
      headerTextColor: headerTextColor ?? this.headerTextColor,
      primaryOnLightTextColor: primaryOnLightTextColor ?? this.primaryOnLightTextColor,
      primaryOnDarkTextColor: primaryOnDarkTextColor ?? this.primaryOnDarkTextColor,
      secondaryTextColor: secondaryTextColor ?? this.secondaryTextColor,
    );
  }

  @override
  AppColorScheme lerp(ThemeExtension<AppColorScheme>? other, double t) {
    if (other is! AppColorScheme) {
      return this;
    }
    return AppColorScheme(
        primaryColor: Color.lerp(primaryColor, other.primaryColor, t),
        secondaryColor: Color.lerp(secondaryColor, other.secondaryColor, t),
        formBackgroundColor: Color.lerp(formBackgroundColor, other.formBackgroundColor, t),
        appBarButtonColor: Color.lerp(appBarButtonColor, other.appBarButtonColor, t),
        buttonColor_1: Color.lerp(buttonColor_1, other.buttonColor_1, t),
        buttonColor_2: Color.lerp(buttonColor_2, other.buttonColor_2, t),
        headerTextColor: Color.lerp(headerTextColor, other.headerTextColor, t),
        primaryOnLightTextColor: Color.lerp(primaryOnLightTextColor, other.primaryOnLightTextColor, t),
        primaryOnDarkTextColor: Color.lerp(primaryOnDarkTextColor, other.primaryOnDarkTextColor, t),
        secondaryTextColor: Color.lerp(secondaryTextColor, other.secondaryTextColor, t),
    );
  }
}