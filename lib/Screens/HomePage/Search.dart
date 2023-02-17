// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:todo/Class/Todo.dart';
import 'package:todo/Class/static.dart';
import 'package:todo/Units/app_colors.dart';

class SearchWidget extends StatefulWidget {
  const SearchWidget({
    Key? key,
  }) : super(key: key);

  @override
  State<SearchWidget> createState() => _SearchWidgetState();
}

class _SearchWidgetState extends State<SearchWidget> {
  @override
  void initState() {
    // scr.Searchtodo = sic.todoList;
    super.initState();
  }

  final TextEditingController _searchcontroller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 5, right: 40, bottom: 10),
      child: SizedBox(
        height: 40,
        child: Padding(
          padding: const EdgeInsets.all(1.0),
          child: TextField(
            controller: _searchcontroller,
            onChanged: (value) {
              setState(() {
                // _ToDoSearch(value);
              });
            },
            style: const TextStyle(fontSize: 15, color: AppColors.AppTxt),
            cursorColor: AppColors.AppTxt,
            decoration: InputDecoration(
                contentPadding: const EdgeInsets.only(left: 30),
                focusedBorder: const OutlineInputBorder(
                  borderRadius: BorderRadius.all(Radius.circular(25)),
                  borderSide: BorderSide(width: 1, color: AppColors.AppTxt),
                ),
                fillColor: AppColors.transparent,
                filled: true,
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: AppColors.white)),
                hintText: 'Search',
                hintStyle: const TextStyle(
                  decoration: TextDecoration.none,
                  fontFamily: 'Sitka Small Semibold',
                  fontWeight: FontWeight.w600,
                  fontSize: 15,
                  letterSpacing: 1.5,
                  color: AppColors.AppTxt,
                ),
                suffixIcon: Container(
                  padding: const EdgeInsets.only(right: 20),
                  child: const Icon(
                    Icons.search,
                    color: AppColors.AppTxt,
                  ),
                )),
          ),
        ),
      ),
    );
  }

  // ignore: non_constant_identifier_names
  // void _ToDoSearch(String SearchEnteredword) {
  //   List<Todo> result = [];
  //   if (SearchEnteredword.isEmpty) {
  //     result = sic.todoList;
  //   } else {
  //     result = sic.todoList
  //         .where((item) => item.todoText!
  //             .toLowerCase()
  //             .contains(SearchEnteredword.toLowerCase()))
  //         .toList();
  //   }
  //   setState(() {
  //     result;
  //   });
  // }
}
