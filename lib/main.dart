import 'package:flutter/material.dart';
import 'package:test_work/modules/app/base/material_application.dart';
import 'package:test_work/modules/app/cache.dart';
import 'package:test_work/modules/app/helpers/theme_mode_helper.dart';

void main() async {
  await Cache.initialize();
  ThemeModeHelper.setupSystemNavigation();
  runApp(const MaterialApplication());
}
