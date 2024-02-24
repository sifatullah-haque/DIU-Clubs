import 'package:diu/pages/home_page/Certificate/certificate.dart';
import 'package:diu/pages/home_page/Daily_Streak/daily_streak.dart';
import 'package:diu/pages/home_page/Idea/Idea.dart';
import 'package:diu/pages/home_page/Join_Club/join_club.dart';
import 'package:diu/pages/home_page/Leaderboard/leaderboard.dart';
import 'package:diu/pages/home_page/Personal_Data/personal_data.dart';
import 'package:diu/pages/home_page/Support/Support.dart';
import 'package:diu/pages/home_page/Volunteer/volunteer.dart';
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
                    destination: Leaderboard(),
                  ),
                  GridViewIcons(
                    icon: "Daily_Streak",
                    title: "Daily Streak",
                    destination: DailyStreak(),
                  ),
                  GridViewIcons(
                    icon: "Join_Club",
                    title: "Join Club",
                    destination: JoinClub(),
                  ),
                  GridViewIcons(
                    icon: "Certificates",
                    title: "Certificates",
                    destination: Certificate(),
                  ),
                  GridViewIcons(
                    icon: "Volunteer",
                    title: "Volunteer",
                    destination: Volunteer(),
                  ),
                  GridViewIcons(
                    icon: "Personal_Data",
                    title: "Personal Data",
                    destination: PersonalData(),
                  ),
                  GridViewIcons(
                    icon: "IDEA",
                    title: "Idea",
                    destination: Idea(),
                  ),
                  GridViewIcons(
                    icon: "Support",
                    title: "Support",
                    destination: Support(),
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
  final Widget destination;
  GridViewIcons({
    super.key,
    required this.icon,
    required this.title,
    required this.destination,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Column(
          children: [
            Image.asset(
              "assets/Icons/home_page/$icon.png",
              height: 66.h,
            ),
            Text(title, style: TextStyle(fontSize: 12.sp))
          ],
        ),
      ),
    );
  }
}
