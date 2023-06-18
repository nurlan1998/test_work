import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:test_work/modules/app/base/dark_theme.dart';
import 'package:test_work/modules/app/base/light_theme.dart';
import 'package:test_work/modules/switch_page.dart';

import '../helpers/theme_mode_helper.dart';

const textTheme = TextTheme(
  bodyText1: TextStyle(color: Colors.black),
  bodyText2: TextStyle(color: Colors.black),
  button: TextStyle(color: Colors.black),
  headline6: TextStyle(color: Colors.black),
);

class MaterialApplication extends StatefulWidget {
  const MaterialApplication({Key? key}) : super(key: key);

  @override
  State<MaterialApplication> createState() => _MaterialApplicationState();
}

class _MaterialApplicationState extends State<MaterialApplication> {

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: ThemeModeHelper.notifier,
      builder: (context,ThemeMode value, _) {
        return MaterialApp(
          title: 'asd',
          themeMode: value,
          theme: LightTheme.config(),
          darkTheme: DarkTheme.config(),
          home: const SwitchPage(),
        );
      },
    );
  }
}
