// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:todo/Units/app_colors.dart';

class CategoriesList extends StatelessWidget {
  const CategoriesList({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      flex: 2,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          Container(
            margin: const EdgeInsets.only(left: 30, bottom: 5),
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
                  margin: const EdgeInsets.only(left: 10, right: 10, bottom: 5),
                  child: const Text(
                    "k",
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
                Container(
                  padding:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 5),
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
    );
  }
}
