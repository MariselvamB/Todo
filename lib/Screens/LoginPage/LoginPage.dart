// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

import 'package:todo/Screens/HomePage/HomePage.dart';
import 'package:todo/Units/app_colors.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({
    super.key,
  });

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Material(
        child: Container(
      alignment: Alignment.topCenter,
      color: const Color.fromARGB(255, 78, 78, 78),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                boxShadow: const [BoxShadow(blurRadius: 5)],
                gradient: LinearGradient(
                  begin: Alignment.topRight,
                  end: Alignment.bottomLeft,
                  stops: [
                    0.1,
                    0.5,
                    0.9,
                  ],
                  colors: [
                    AppColors.AppTxt,
                    AppColors.grey,
                    AppColors.ctColors
                  ],
                ),
              ),
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(
                      left: 50, right: 50, top: 20, bottom: 20),
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: const Text(
                    "Happiness can be found, even in the darkest of times, if one only remembers to turn on the light 💫",
                    style: TextStyle(
                      fontFamily: 'Sitka Small Semibold',
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.normal,
                      fontSize: 18,
                      letterSpacing: 1.5,
                      wordSpacing: 3,
                      color: AppColors.appBackground,
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(
                      left: 50, right: 50, top: 50, bottom: 20),
                  padding: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  child: const Text(
                    "Manage your tasks & everything with tasking",
                    style: TextStyle(
                      fontFamily: 'Sitka Small Semibold',
                      fontWeight: FontWeight.w600,
                      fontStyle: FontStyle.italic,
                      fontSize: 32,
                      letterSpacing: 1.5,
                      wordSpacing: 3,
                      color: AppColors.appBackground,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(mainAxisAlignment: MainAxisAlignment.end, children: [
            GestureDetector(
              onTap: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const HomePage()));
              },
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 100, right: 100, top: 50, bottom: 50),
                child: Container(
                  padding: const EdgeInsets.only(top: 15, bottom: 15),
                  alignment: Alignment.center,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    boxShadow: const [BoxShadow(blurRadius: 5)],
                    gradient: const LinearGradient(colors: [
                      AppColors.AppTxt,
                      AppColors.grey,
                      AppColors.ctColors
                    ]),
                    borderRadius: BorderRadius.circular(25),
                    border: Border.all(
                      width: 1,
                      color: AppColors.transparent,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Let's Start",
                      style: TextStyle(
                        decoration: TextDecoration.none,
                        fontFamily: 'Sitka Small Semibold',
                        fontWeight: FontWeight.w600,
                        fontSize: 18,
                        letterSpacing: 1.5,
                        color: AppColors.appBackground,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ])
        ],
      ),
    ));
  }
}
