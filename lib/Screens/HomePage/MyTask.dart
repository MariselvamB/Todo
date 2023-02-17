// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:todo/Screens/HomePage/Search.dart';
import 'package:todo/Screens/createCategory/createCategory.dart';
import 'package:todo/Screens/HomePage/Search.dart';

import 'package:todo/Units/app_colors.dart';
import 'package:todo/Screens/createCategory/createCategory.dart';

import '../CategoriesList/CategoriesList.dart';
import 'OnGoingTask.dart';

class MyTaskPage extends StatefulWidget {
  const MyTaskPage({super.key});

  @override
  State<MyTaskPage> createState() => _MyTaskPageState();
}

class _MyTaskPageState extends State<MyTaskPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        color: AppColors.appBackground,
        child: Column(
          children: [
            SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                padding: const EdgeInsets.only(top: 5, left: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SearchWidget(),
                    const SizedBox(height: 3),
                    Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        const Text(
                          "My tasks",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Sitka Small Semibold',
                            fontWeight: FontWeight.w600,
                            fontSize: 18,
                            letterSpacing: 1.5,
                            color: AppColors.white,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: const [
                        Text(
                          "4",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Sitka Small Semibold',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            letterSpacing: 1.5,
                            color: AppColors.AppTxt,
                          ),
                        ),
                        Text(
                          " task for you Today",
                          style: TextStyle(
                            decoration: TextDecoration.none,
                            fontFamily: 'Sitka Small Semibold',
                            fontWeight: FontWeight.w600,
                            fontSize: 12,
                            letterSpacing: 1.5,
                            color: AppColors.AppTxt,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              top: 5, right: 10, bottom: 5),
                          child: const Text(
                            "Categories",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Sitka Small Semibold',
                              fontWeight: FontWeight.w600,
                              fontSize: 18,
                              letterSpacing: 1.5,
                              color: AppColors.white,
                            ),
                          ),
                        ),
                        InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const createCategory()));
                            },
                            child: Container(
                                margin: const EdgeInsets.only(
                                    top: 15, right: 35, bottom: 10),
                                padding: const EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                  boxShadow: const [BoxShadow(blurRadius: 3)],
                                  color: AppColors.ctColors,
                                  borderRadius: BorderRadius.circular(14),
                                  border: Border.all(
                                    width: 1,
                                    color: AppColors.transparent,
                                  ),
                                ),
                                child: const Center(
                                    child: Icon(
                                  Icons.add,
                                  color: AppColors.AppTxt,
                                )))),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const CategoriesList(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(top: 10, left: 40, bottom: 15),
                  child: const Text(
                    "Ongoing Task",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Sitka Small Semibold',
                      fontWeight: FontWeight.w600,
                      fontSize: 18,
                      letterSpacing: 1,
                      color: AppColors.text,
                    ),
                  ),
                ),
                Container(
                  alignment: Alignment.centerLeft,
                  padding: const EdgeInsets.only(
                      top: 10, left: 20, right: 35, bottom: 15),
                  child: const Text(
                    "See all",
                    style: TextStyle(
                      decoration: TextDecoration.none,
                      fontFamily: 'Sitka Small Semibold',
                      fontWeight: FontWeight.w500,
                      fontSize: 12,
                      letterSpacing: 1.5,
                      color: AppColors.AppTxt,
                    ),
                  ),
                ),
              ],
            ),
            // OnGoingTasks(),
          ],
        ));
  }
}
