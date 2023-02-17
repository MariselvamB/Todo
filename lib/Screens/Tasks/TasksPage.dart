import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:todo/Screens/HomePage/HomePageTitlewidget.dart';
import 'package:todo/Units/app_colors.dart';
import 'package:todo/Widgets/drawer/drawer.dart';

class TasksPage extends StatefulWidget {
  const TasksPage({super.key});

  @override
  State<TasksPage> createState() => _TasksPageState();
}

class _TasksPageState extends State<TasksPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        elevation: 0,
        backgroundColor: AppColors.appBackground,
        leading: Icon(
          Icons.home_outlined,
          color: AppColors.blue,
        ),
        title: Column(
          children: const [
            Text(
              "Tasks",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Sitka Small Semibold',
                fontWeight: FontWeight.w600,
                fontSize: 22,
                letterSpacing: 1.5,
                color: AppColors.blue,
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
      body: TasksBody(),
    );
  }
}

class TasksBody extends StatelessWidget {
  const TasksBody({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBackground,
    );
  }
}
