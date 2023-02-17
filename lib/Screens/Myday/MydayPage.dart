import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/Screens/HomePage/HomePageTitlewidget.dart';
import 'package:todo/Units/app_colors.dart';
import 'package:todo/Widgets/drawer/drawer.dart';

class MydayPage extends StatefulWidget {
  const MydayPage({super.key});

  @override
  State<MydayPage> createState() => _MydayPageState();
}

class _MydayPageState extends State<MydayPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.appBackground,
        leading: Icon(
          Icons.wb_sunny_outlined,
          color: AppColors.grey,
        ),
        title: Column(
          children: const [
            Text(
              "Myday",
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Sitka Small Semibold',
                  fontWeight: FontWeight.w600,
                  fontSize: 22,
                  letterSpacing: 1.5,
                  color: AppColors.grey),
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
      body: MydayBody(),
    );
  }
}

class MydayBody extends StatelessWidget {
  const MydayBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBackground,
    );
  }
}
