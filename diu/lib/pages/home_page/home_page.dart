import 'package:diu/Constant/color_is.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffF6FAFF),
      body: Stack(
        children: [
          _buildHeader(),
          Positioned(
            top: _calculateContainerTopPosition(context),
            left: _calculateContainerMiddlePosition(context),
            right: _calculateContainerMiddlePosition(context),
            child: _buildRedContainer(),
          ),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    return Column(
      children: [
        Container(
          height: 280.h,
          decoration: const BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(30.0),
              bottomRight: Radius.circular(30.0),
            ),
            gradient: LinearGradient(
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
              colors: [Color(0xff6686F6), Color(0xff60BBEF)],
            ),
          ),
          child: SafeArea(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.w),
              child: Column(
                children: [
                  SizedBox(height: 30.h),
                  _buildAvatarAndUserInfo(),
                  SizedBox(height: 15.h),
                  _buildCurrentStreakContainer(),
                ],
              ),
            ),
          ),
        ),
        SizedBox(
          height: 40.h,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Column(
            children: [
              Container(
                  height: 400.h,
                  child: GridView(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 4,
                        // childAspectRatio: 2 / 3,
                        crossAxisSpacing: 8.0,
                        mainAxisSpacing: 30.0),
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
        )
      ],
    );
  }

  Widget _buildAvatarAndUserInfo() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CircleAvatar(
          radius: 45.0,
          child: Image.asset("assets/avatars/avatar.png"),
        ),
        SizedBox(width: 20.w),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Hello !",
              style: TextStyle(
                color: Coloris.white,
                fontWeight: FontWeight.w600,
                fontSize: 16.sp,
              ),
            ),
            SizedBox(height: 5.sp),
            Text(
              "Sifatullah Haque Sajeeb",
              style: TextStyle(
                color: Coloris.white,
                fontSize: 20.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 5.sp),
            const Text(
              "D-78(A)",
              style: TextStyle(
                color: Coloris.white,
                fontWeight: FontWeight.w600,
              ),
            )
          ],
        ),
      ],
    );
  }

  Widget _buildCurrentStreakContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Coloris.white,
        borderRadius: BorderRadius.circular(30),
      ),
      child: const Padding(
        padding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 15.0),
        child: Text("Current Streak"),
      ),
    );
  }

  Widget _buildRedContainer() {
    return Container(
      decoration: BoxDecoration(
        color: Coloris.white,
        borderRadius: BorderRadius.circular(15.0),
        // boxShadow: const [
        //   BoxShadow(
        //     color: Color.fromARGB(255, 144, 163, 173),
        //     offset: Offset(0, 1),
        //     blurRadius: 10,
        //     spreadRadius: 1,
        //   )
        // ]
      ),
      alignment: Alignment.center,
      height: 55.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            "assets/Icons/common/Fire.png",
            height: 40.h,
          ),
          const SizedBox(
            width: 10.0,
          ),
          const Text(
            "15 Days",
            style: TextStyle(
                fontWeight: FontWeight.w800, fontSize: 18.0, color: Colors.red),
          )
        ],
      ),
    );
  }

  double _calculateContainerTopPosition(BuildContext context) {
    // Calculate the top position dynamically based on screen height
    return ScreenUtil().screenHeight * 0.27;
  }

  double _calculateContainerMiddlePosition(BuildContext context) {
    // Calculate the top position dynamically based on screen width
    return ScreenUtil().screenWidth * 0.22;
  }
}

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
