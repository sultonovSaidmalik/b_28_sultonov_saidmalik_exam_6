import 'package:b_28_sultonov_saidmalik_exam_6/services/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class AppNavigationBar extends StatelessWidget {
  final SelectionContainer controller;

  const AppNavigationBar({Key? key, required this.controller})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final selectedIcons = [
      'assets/icons/ic_home.png',
     'assets/icons/videoFill.svg',
      'assets/icons/bookmarkFill.svg',
      'assets/icons/profileFill.svg',
    ];

    return NavigationBar(
      selectedIndex: 0,
      height: 70,
      elevation: 3,
      backgroundColor: AppColors.cFFFFFF,
      destinations: [
        for (int i = 0; i < selectedIcons.length; i++)
          CupertinoButton(
            onPressed: () => controller.buttonNavigationBar(i),
            child: Image.asset((controller.initialPage[i])),
          )
      ],
    );
  }
}
