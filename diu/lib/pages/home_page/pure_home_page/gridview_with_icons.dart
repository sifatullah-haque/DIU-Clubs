import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class GridviewWithIcons extends StatelessWidget {
  const GridviewWithIcons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0),
      child: Column(
        children: [
          SizedBox(
              height: 270.h,
              child: GridView(
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    // childAspectRatio: 2 / 3,
                    crossAxisSpacing: 8.0,
                    mainAxisSpacing: 20.0),
                children: [
                  GridViewIcons(
                    title: "Leaderboard",
                    icon: "Leaderboard",
                  ),
                  GridViewIcons(
                    icon: "Daily_Streak",
                    title: "Daily Streak",
                  ),
                  GridViewIcons(
                    icon: "Join_Club",
                    title: "Join Club",
                  ),
                  GridViewIcons(
                    icon: "Certificates",
                    title: "Certificates",
                  ),
                  GridViewIcons(
                    icon: "Volunteer",
                    title: "Volunteer",
                  ),
                  GridViewIcons(
                    icon: "Personal_Data",
                    title: "Personal Data",
                  ),
                  GridViewIcons(
                    icon: "IDEA",
                    title: "Idea",
                  ),
                  GridViewIcons(
                    icon: "Support",
                    title: "Support",
                  ),
                ],
              ))
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class GridViewIcons extends StatelessWidget {
  String title;
  String icon;
  GridViewIcons({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        children: [
          Image.asset(
            "assets/Icons/home_page/$icon.png",
            height: 66.h,
          ),
          Text(title, style: TextStyle(fontSize: 12.sp))
        ],
      ),
    );
  }
}
