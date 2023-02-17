import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/Screens/HomePage/HomePageTitlewidget.dart';
import 'package:todo/Units/app_colors.dart';
import 'package:todo/Widgets/drawer/drawer.dart';
import 'package:todo/Widgets/drawer/drawer.dart';

class ImpotantsPage extends StatefulWidget {
  const ImpotantsPage({super.key});

  @override
  State<ImpotantsPage> createState() => _ImpotantsPageState();
}

class _ImpotantsPageState extends State<ImpotantsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.appBackground,
        leading: Icon(
          Icons.star_border,
          color: AppColors.pink,
        ),
        title: Column(
          children: const [
            Text(
              "Impotant",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Sitka Small Semibold',
                fontWeight: FontWeight.w600,
                fontSize: 22,
                letterSpacing: 1.5,
                color: AppColors.pink,
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
      body: ImpotantsBody(),
    );
  }
}

class ImpotantsBody extends StatelessWidget {
  const ImpotantsBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBackground,
    );
  }
}
