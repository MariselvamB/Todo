import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/Screens/HomePage/HomePageTitlewidget.dart';
import 'package:todo/Units/app_colors.dart';
import 'package:todo/Widgets/drawer/drawer.dart';

class PlannedPage extends StatefulWidget {
  const PlannedPage({super.key});

  @override
  State<PlannedPage> createState() => _PlannedPageState();
}

class _PlannedPageState extends State<PlannedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.appBackground,
        leading: Icon(
          Icons.list_alt_outlined,
          color: AppColors.greenAccent,
        ),
        title: Column(
          children: const [
            Text(
              "Planned",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Sitka Small Semibold',
                fontWeight: FontWeight.w600,
                fontSize: 22,
                letterSpacing: 1.5,
                color: AppColors.greenAccent,
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
      body: PlannedBody(),
    );
  }
}

class PlannedBody extends StatelessWidget {
  const PlannedBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBackground,
    );
  }
}
