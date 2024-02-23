import 'package:diu/pages/home_page/Certificate/certificate.dart';
import 'package:diu/pages/home_page/Daily_Streak/Volunteer_Success.dart';
import 'package:diu/pages/home_page/Daily_Streak/daily_streak.dart';
import 'package:diu/pages/home_page/Join_Club/join_club.dart';
import 'package:diu/pages/home_page/Join_Club/join_club_success.dart';
import 'package:diu/pages/home_page/Personal_Data/personal_data.dart';
import 'package:diu/pages/home_page/Support/Supoport_Success.dart';
import 'package:diu/pages/home_page/Volunteer/Volunteer_Success.dart';
import 'package:diu/pages/home_page/Volunteer/volunteer.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: Size(428, 926.3),
        minTextAdapt: true,
        splitScreenMode: true,
        builder: (context, child) => MaterialApp(
              theme: ThemeData(
                fontFamily: "Poppins",
              ),
              debugShowCheckedModeBanner: false,
              home: DailyStreak(),
            ));
  }
}
