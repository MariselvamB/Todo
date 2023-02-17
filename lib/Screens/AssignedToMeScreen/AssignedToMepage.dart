import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/Screens/HomePage/HomePageTitlewidget.dart';

import 'package:todo/Units/app_colors.dart';
import 'package:todo/Units/app_strings.dart';
import 'package:todo/Widgets/drawer/drawer.dart';

class AssignedToMePage extends StatefulWidget {
  const AssignedToMePage({super.key});

  @override
  State<AssignedToMePage> createState() => _AssignedToMePageState();
}

class _AssignedToMePageState extends State<AssignedToMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.appBackground,
        leading: Icon(
          Icons.person,
          color: AppColors.green,
        ),
        title: Column(
          children: const [
            Text(
              AppStrings.AssignedToMe,
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Sitka Small Semibold',
                fontWeight: FontWeight.w600,
                fontSize: 22,
                letterSpacing: 1.5,
                color: AppColors.green,
              ),
            ),
          ],
        ),
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.grey,
            ),
          ),
        ],
      ),
      drawer: const drawerPage(),
      body: AssainedToMeBody(),
    );
  }
}

class AssainedToMeBody extends StatelessWidget {
  const AssainedToMeBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBackground,
    );
  }
}
