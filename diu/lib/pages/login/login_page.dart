import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'custom_tab_bar.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Center(
          child: Stack(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Column(
                  children: [
                    Padding(padding: EdgeInsets.only(top: 90.h)),
                    Image.asset(
                      "assets/svg/diu.png",
                      width: 200.w,
                      height: 100.h,
                    ),
                    Padding(padding: EdgeInsets.only(top: 20.h)),
                    CustomTabBar(),
                    Image.asset("assets/svg/login.png")
                  ],
                ),
              ),
              Positioned(
                bottom: 0,
                right: 0,
                left: 0,
                child: Image.asset("assets/svg/button_svg.png"),
              )
            ],
          ),
        ),
      ),
    );
  }
}
