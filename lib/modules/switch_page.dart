import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:intl/intl.dart';
import 'package:test_work/modules/app/cache.dart';
import 'package:test_work/modules/app/second_page.dart';

import 'app/helpers/theme_mode_helper.dart';

class SwitchPage extends StatefulWidget {
  const SwitchPage({Key? key}) : super(key: key);

  @override
  State<SwitchPage> createState() => _SwitchPageState();
}

class _SwitchPageState extends State<SwitchPage> {
  bool isSwitched = false;
  List<String> logs = [];
  String formattedDate = DateFormat('kk:mm:ss EEE d MMM').format(DateTime.now());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const SecondPage()),
          );
        },
        child: const Icon(Icons.keyboard_arrow_right),
      ),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          Switch(
            value: isSwitched,
            onChanged: (bool value) {
              ThemeModeHelper.changeToOpposite();
              setState(() {
                isSwitched = value;
              });
              logs.add('$formattedDate: Switch state:$isSwitched');
            },
          ),
          const SizedBox(height: 10),
          for(var x in logs) ...[
            Center(child: Text(x)),
            const SizedBox(height: 8)
          ]
        ],
      ),
    );
  }
}
