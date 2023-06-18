import 'package:flutter/material.dart';
import 'package:test_work/modules/app/helpers/theme_mode_helper.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: ThemeModeHelper.isLight ? const Text('Hello World'): const Text('Bye world',),
        ),
      ),
    );
  }
}
