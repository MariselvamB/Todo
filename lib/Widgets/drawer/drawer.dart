// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:todo/Screens/AssignedToMeScreen/AssignedToMepage.dart';
import 'package:todo/Screens/Impotant/Impotant.dart';
import 'package:todo/Screens/Myday/MydayPage.dart';
import 'package:todo/Screens/Planned/PlannedPage.dart';
import 'package:todo/Screens/AssignedToMeScreen/AssignedToMepage.dart';
import 'package:todo/Screens/Impotant/Impotant.dart';
import 'package:todo/Screens/Myday/MydayPage.dart';
import 'package:todo/Screens/Planned/PlannedPage.dart';
import 'package:todo/Screens/Tasks/TasksPage.dart';
import 'package:todo/Screens/Tasks/TasksPage.dart';
import 'package:todo/Widgets/drawer/UnamedList.dart';
import 'package:todo/Units/app_colors.dart';

class Drawesitems {
  int Id;
  IconData LeadingIcon;
  String Topic;
  String Count;
  Color color;
  Drawesitems(
      {required this.Id,
      required this.LeadingIcon,
      required this.Topic,
      required this.Count,
      required this.color});
}

class drawerPage extends StatelessWidget {
  const drawerPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Drawesitems> DrawesitemsList = [
      Drawesitems(
          Id: 1,
          LeadingIcon: Icons.wb_sunny_outlined,
          Topic: "My Day",
          Count: "1",
          color: AppColors.grey),
      Drawesitems(
          Id: 2,
          LeadingIcon: Icons.star_border,
          Topic: "Important",
          Count: "1",
          color: AppColors.pink),
      Drawesitems(
          Id: 3,
          LeadingIcon: Icons.list_alt_outlined,
          Topic: "Planned",
          Count: "1",
          color: AppColors.greenAccent),
      Drawesitems(
          Id: 4,
          LeadingIcon: Icons.person,
          Topic: "Assigned to me",
          Count: "1",
          color: AppColors.green),
      Drawesitems(
          Id: 5,
          LeadingIcon: Icons.home_outlined,
          Topic: "Tasks",
          Count: "1",
          color: AppColors.blue),
    ];
    return Container(
      padding: const EdgeInsets.only(top: 10, left: 10, right: 10, bottom: 10),
      width: 300,
      color: AppColors.appBackground,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(
              top: 20,
              left: 10,
              right: 10,
            ),
            child: IconButton(
              icon: const Icon(
                Icons.menu,
                color: AppColors.grey,
              ),
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ),
          const ListTile(
            leading: CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.grey,
            ),
            title: Text(
              "Mariselvam",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Montserrat',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 15,
                letterSpacing: 1,
                color: AppColors.white,
              ),
            ),
            subtitle: Text(
              "bmselvam001@gmail.com",
              style: TextStyle(
                decoration: TextDecoration.none,
                fontFamily: 'Montserrat',
                fontStyle: FontStyle.normal,
                fontWeight: FontWeight.w400,
                fontSize: 13,
                letterSpacing: 1,
                color: AppColors.grey,
              ),
            ),
          ),
          ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: DrawesitemsList.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Icon(
                  DrawesitemsList[index].LeadingIcon,
                  color: DrawesitemsList[index].color,
                ),
                title: Text(DrawesitemsList[index].Topic,
                    style: const TextStyle(
                      fontStyle: FontStyle.normal,
                      fontWeight: FontWeight.w400,
                      fontSize: 15,
                      color: AppColors.white,
                    )),
                trailing: CircleAvatar(
                    radius: 10,
                    backgroundColor: const Color.fromARGB(255, 51, 49, 49),
                    child: Text(
                      DrawesitemsList[index].Count,
                      style: const TextStyle(
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                        color: AppColors.white,
                      ),
                    )),
              );
            },
          ),
          const Divider(
            height: 1,
            color: AppColors.grey,
          ),
          Expanded(
            child: ListView(
              shrinkWrap: true,
              scrollDirection: Axis.vertical,
              children: [
                // UnamedList(),
              ],
            ),
          ),
          Row(
            children: [
              Expanded(
                flex: 4,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [BoxShadow(blurRadius: 2)],
                    color: AppColors.appBackground,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: AppColors.transparent,
                    ),
                  ),
                  child: ListTile(
                    onTap: () {},
                    leading: const Icon(
                      Icons.add,
                      color: AppColors.white,
                    ),
                    title: const Text(
                      'New List',
                      style: TextStyle(
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 5),
              Expanded(
                flex: 1,
                child: Container(
                  decoration: BoxDecoration(
                    boxShadow: const [BoxShadow(blurRadius: 2)],
                    color: AppColors.appBackground,
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(
                      width: 1,
                      color: AppColors.transparent,
                    ),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(15),
                      child: Icon(
                        Icons.indeterminate_check_box_outlined,
                        color: AppColors.white,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Future<Widget>(Drawesitems Drawesitems) async {
    switch (Drawesitems.Id) {
      case 1:
        return MydayPage();
      case 2:
        return ImpotantsPage();
      case 3:
        return PlannedPage();
      case 4:
        return AssignedToMePage();
      case 5:
        return TasksPage();
    }
  }
}
