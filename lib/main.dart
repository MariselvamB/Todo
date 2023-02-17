import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:todo/Screens/LoginPage/LoginPage.dart';
import 'package:todo/Screens/Impotant/Impotant.dart';
import 'package:todo/Screens/LoginPage/LoginPage.dart';
import 'package:todo/Widgets/drawer/drawer.dart';

import 'Screens/AssignedToMeScreen/AssignedToMepage.dart';

void main() async {
  await Hive.initFlutter();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home:
          // drawerPage()
          LoginPage(),
    );
  }
}
