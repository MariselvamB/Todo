// ignore_for_file: camel_case_types, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:todo/Class/Todo.dart';
import 'package:todo/Class/static.dart';

import 'package:todo/Units/app_colors.dart';
import 'package:todo/Units/app_colors.dart';

class bottomAddATaskWidget extends StatefulWidget {
  const bottomAddATaskWidget({
    super.key,
  });

  @override
  State<bottomAddATaskWidget> createState() => _bottomAddATaskWidgetState();
}

class _bottomAddATaskWidgetState extends State<bottomAddATaskWidget> {
  static final _TodoAddcontroller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.appBackground,
      height: 60,
      child: Container(
        padding: const EdgeInsets.only(
          right: 20,
          left: 20,
        ),
        margin: const EdgeInsets.only(right: 25, left: 25, bottom: 5, top: 5),
        decoration: BoxDecoration(
          color: AppColors.AppTxt,
          borderRadius: BorderRadius.circular(50),
          border: Border.all(
            width: 1,
            color: AppColors.transparent,
          ),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 10,
              child: ListTile(
                title: SizedBox(
                  height: 40,
                  child: TextField(
                    controller: _TodoAddcontroller,
                    style: const TextStyle(fontSize: 15, color: AppColors.text),
                    cursorColor: AppColors.white,
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(top: 10),
                      fillColor: AppColors.AppTxt,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20),
                          borderSide: BorderSide.none),
                      hintText: 'Add a task',
                      hintStyle: const TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Sitka Small Semibold',
                        fontWeight: FontWeight.w600,
                        fontSize: 15,
                        letterSpacing: .5,
                        color: AppColors.white,
                      ),
                      prefixIcon: Container(
                        padding: const EdgeInsets.only(
                          right: 10,
                        ),
                        width: 15,
                        child: Icon(
                          Icons.add,
                          color: AppColors.white,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: SizedBox(
                width: 15,
                child: IconButton(
                  onPressed: () {
                    // _ToDoAddItems(_TodoAddcontroller.text);
                  },
                  icon: const Icon(
                    Icons.send_rounded,
                    color: AppColors.white,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  // Future<void> _ToDoAddItems(String ToDo) async {
  //   List<Todo> result = [];
  //   if (ToDo.isEmpty) {
  //     result = sic.todoList;
  //   } else {
  //     sic.todoList.add(
  //       Todo(
  //           id: DateTime.now().millisecondsSinceEpoch.toString(),
  //           todoText: ToDo),
  //     );
  //   }
  //   setState(() {
  //     result;
  //   });
  //   _TodoAddcontroller.clear();
  // }
}
