import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class DarkTheme {
  DarkTheme._();

  static ThemeData config() {
    const textTheme = TextTheme(
      bodyText1: TextStyle(color: Colors.white),
      bodyText2: TextStyle(color: Colors.white),
      button: TextStyle(color: Colors.white),
      headline6: TextStyle(color: Colors.white),
    );
    return ThemeData(
      brightness: Brightness.dark,
      primaryColor: const Color(0xff2787F5),
      scaffoldBackgroundColor: const Color(0xff0a0a0a),
      buttonTheme: const ButtonThemeData(
        buttonColor: Color(0xff2787F5),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        backgroundColor: const Color(0xff19191a),
        textTheme: textTheme.copyWith(
          headline6: textTheme.headline6!.copyWith(
            fontSize: 17.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarIconBrightness: Brightness.light,
          statusBarBrightness: Brightness.dark,
          statusBarColor: Colors.transparent,
        ),
      ),
      dialogTheme: const DialogTheme(
        backgroundColor: Color(0xff19191a),
        titleTextStyle: TextStyle(
          color: Colors.white70,
        ),
        contentTextStyle: TextStyle(
          color: Colors.white,
        ),
      ),
      textTheme: textTheme,
    );
  }
}