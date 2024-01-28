import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
class MyBottomNavBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomNavBar({super.key,required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
        onTabChange: (value)=> onTabChange!(value) ,
        color: Colors.grey[400],
          tabBorderRadius: 30,
          tabActiveBorder: Border.all(color: Colors.white),
          tabs: [
            GButton(
              icon: Icons.question_mark,
              text : "how it works",
            ),
            GButton(
              icon: Icons.food_bank,
              text : "test",
            ),
            GButton(
              icon: Icons.upload_file,
              text : "upload data",
            ),
            GButton(
              icon: Icons.how_to_reg_rounded,
              text : "coders",
            ),
      ],
        ),
    );
  }
}
