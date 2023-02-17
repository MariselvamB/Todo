// ignore_for_file: file_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:todo/Screens/HomePage/MyTask.dart';
import 'package:todo/Screens/HomePage/MyTask.dart';
import 'package:todo/Screens/HomePage/HomePageTitlewidget.dart';
import 'package:todo/Widgets/add.dart';
import 'package:todo/Widgets/drawer/drawer.dart';
import 'package:todo/Units/app_colors.dart';
import 'package:todo/add.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.appBackground,
        // title: const HomePageTitleWidget(),
        actions: const [
          Padding(
            padding: EdgeInsets.only(top: 15, right: 30),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.grey,
            ),
          ),
        ],
      ),
      drawer: const drawerPage(),
      body: const MyTaskPage(),
      bottomNavigationBar: const bottomAddATaskWidget(),
    );
  }
}
