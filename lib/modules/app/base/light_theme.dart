import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LightTheme {
  LightTheme._();

  static ThemeData config() {
    const textTheme = TextTheme(
      bodyText1: TextStyle(color: Colors.black),
      bodyText2: TextStyle(color: Colors.black),
      button: TextStyle(color: Colors.black),
      headline6: TextStyle(color: Colors.black),
    );

    return ThemeData(
      brightness: Brightness.light,
      primaryColor: const Color(0xff2787F5),
      scaffoldBackgroundColor: Colors.white,
      buttonTheme: const ButtonThemeData(
        buttonColor: Color(0xff2787F5),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: const Color(0xfff2f3f5),
        textTheme: textTheme.copyWith(
          headline6: textTheme.headline6!.copyWith(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.dark,
          statusBarBrightness: Brightness.light,
          statusBarColor: Colors.transparent,

          systemNavigationBarColor: Colors.white,
          systemNavigationBarDividerColor: Colors.white,
          systemNavigationBarIconBrightness: Brightness.dark,
        ),
      ),
      dialogTheme: DialogTheme(
        backgroundColor: Colors.white,
        titleTextStyle: TextStyle(
          color: Colors.black.withOpacity(0.7),
        ),
        contentTextStyle: const TextStyle(
          color: Colors.black,
        ),
      ),
      textTheme: textTheme,
    );
  }
}