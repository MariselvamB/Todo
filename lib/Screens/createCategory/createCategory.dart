// ignore_for_file: file_names, camel_case_types

import 'package:flutter/material.dart';
import 'package:todo/Screens/HomePage/HomePage.dart';
import 'package:todo/Screens/HomePage/HomePage.dart';
import 'package:todo/Screens/HomePage/HomePageTitlewidget.dart';
import 'package:todo/Screens/HomePage/OnGoingTask.dart';
import 'package:todo/Widgets/add.dart';
import 'package:todo/Widgets/drawer/drawer.dart';
import 'package:todo/Units/app_colors.dart';
import 'package:todo/add.dart';

class createCategory extends StatefulWidget {
  const createCategory({super.key});

  @override
  State<createCategory> createState() => _createCategoryState();
}

class _createCategoryState extends State<createCategory> {
  @override
  Widget build(BuildContext context) {
    TextEditingController createCategorycontroller = TextEditingController();
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: EdgeInsets.only(left: 10, top: 10),
          child: GestureDetector(
            child: Icon(Icons.arrow_back_ios),
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => HomePage()));
            },
          ),
        ),
        elevation: 0,
        backgroundColor: AppColors.appBackground,
        // title:   HomePageTitleWidget(),
        actions: const [
          Padding(
            padding: EdgeInsets.only(
              top: 15,
              right: 30,
            ),
            child: CircleAvatar(
              radius: 20,
              backgroundColor: AppColors.grey,
            ),
          ),
        ],
      ),
      body: Container(
        color: AppColors.appBackground,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                    width: 150,
                    margin:
                        const EdgeInsets.only(top: 10, left: 35, bottom: 15),
                    child: const Text(
                      "Create New Category",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Sitka Small Semibold',
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        letterSpacing: 1.5,
                        color: AppColors.AppTxt,
                      ),
                    )),
                Container(
                    margin:
                        const EdgeInsets.only(top: 15, right: 35, bottom: 10),
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
                        child: Text("Save",
                            style: TextStyle(
                              decoration: TextDecoration.none,
                              fontFamily: 'Sitka Small Semibold',
                              fontWeight: FontWeight.w600,
                              fontSize: 15,
                              letterSpacing: 1.5,
                              color: AppColors.AppTxt,
                            ))))
              ],
            ),
            Expanded(
              flex: 2,
              child: ListView(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    margin: const EdgeInsets.only(left: 30, top: 10, bottom: 5),
                    width: 250,
                    padding: const EdgeInsets.only(left: 15, top: 15),
                    decoration: BoxDecoration(
                      boxShadow: const [BoxShadow(blurRadius: 5)],
                      color: AppColors.AppTxt,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(
                        width: 1,
                        color: AppColors.transparent,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: const EdgeInsets.only(
                              left: 10, right: 10, bottom: 10),
                          child: TextField(
                            controller: createCategorycontroller,
                            style: const TextStyle(
                                fontSize: 15, color: AppColors.text),
                            cursorColor: AppColors.text,
                            cursorHeight: 15,
                            keyboardType: TextInputType.multiline,
                            maxLines: null,
                            decoration: const InputDecoration(
                              contentPadding:
                                  EdgeInsets.only(left: 5, right: 10),
                              fillColor: AppColors.transparent,
                              filled: true,
                              border: InputBorder.none,
                              hintText: 'New Category',
                              hintStyle: TextStyle(
                                decoration: TextDecoration.none,
                                fontFamily: 'Sitka Small Semibold',
                                fontWeight: FontWeight.w600,
                                fontSize: 15,
                                letterSpacing: 1.5,
                                color: AppColors.text,
                              ),
                            ),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.only(
                              left: 15, right: 10, bottom: 5),
                          child: Row(
                            children: const [
                              Text(
                                "10",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Sitka Small Semibold',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  letterSpacing: 1.5,
                                  color: AppColors.white,
                                ),
                              ),
                              Text(
                                " tasks",
                                style: TextStyle(
                                  decoration: TextDecoration.none,
                                  fontFamily: 'Sitka Small Semibold',
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  letterSpacing: 1.5,
                                  color: AppColors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            // OnGoingTasks()
            // Expanded(
            //   flex: 3,
            //   child: Stack(
            //     alignment: Alignment.bottomCenter,
            //     children: [
            //       ListView(
            //         scrollDirection: Axis.vertical,
            //         children: [
            //           for (Todo todoo in scr.Searchtodo.reversed)
            //             taskTodoItems(
            //               ToDo: todoo,
            //               onToDoChanged: _handleToDoChange,
            //               onToDoDelete: _ToDodeleteItems,
            //               onToDofavourite: () {},
            //             ),
            //         ],
            //       ),
            //     ],
            //   ),
            // )
          ],
        ),
      ),
      drawer: const drawerPage(),
      bottomNavigationBar: const bottomAddATaskWidget(),
    );
  }
}
