import 'package:diu/Constant/color_is.dart';
import 'package:diu/Constant/common_button.dart';
import 'package:diu/pages/home_page/pure_home_page/home_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// ignore: must_be_immutable
class CustomTabBar extends StatelessWidget {
  final TextEditingController loginController = TextEditingController();
  final TextEditingController registrationController = TextEditingController();

  CustomTabBar({Key? key}) : super(key: key);
  bool? ischecked = false;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: DefaultTabController(
        length: 2,
        child: Column(
          children: [
            const TabBar(
              indicatorColor: Coloris.primary_color,
              labelColor: Coloris.primary_color,
              dividerColor: Colors.transparent,
              tabs: [
                Tab(
                  text: "Login",
                ),
                Tab(
                  text: "Register",
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  _buildLoginTab(context),
                  _buildRegistrationTab(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildLoginTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: loginController,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.mail_outline_rounded),
              prefixIconColor: Coloris.secondary_color,
              hintText: "Email Address",
              hintStyle: TextStyle(
                  color: Coloris.secondary_color, fontWeight: FontWeight.w400),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Coloris.primary_color)),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Coloris.secondary_color)),
            ),
          ),
          const SizedBox(height: 20),
          TextField(
            controller: loginController,
            obscureText: true,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.lock_outline_rounded),
              prefixIconColor: Coloris.secondary_color,
              suffixIcon: Icon(Icons.remove_red_eye_outlined),
              suffixIconColor: Coloris.secondary_color,
              hintText: "Password",
              hintStyle: TextStyle(
                  color: Coloris.secondary_color, fontWeight: FontWeight.w400),
              focusedBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Coloris.primary_color)),
              enabledBorder: UnderlineInputBorder(
                  borderSide: BorderSide(color: Coloris.secondary_color)),
            ),
          ),
          const SizedBox(height: 15),
          Align(
            alignment: Alignment.centerRight,
            child: Text(
              "Forgot Password?",
              style: TextStyle(color: Coloris.primary_color, fontSize: 15.sp),
            ),
          ),
          const SizedBox(height: 15),
          Common_Button(text: "Login", destination: HomePage()),
          SizedBox(height: 50.h),
        ],
      ),
    );
  }

  Widget _buildRegistrationTab(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            controller: registrationController,
            decoration: InputDecoration(
              labelText: 'Username',
            ),
          ),
          SizedBox(height: 20),
          TextField(
            controller: registrationController,
            obscureText: true,
            decoration: InputDecoration(
              labelText: 'Password',
            ),
          ),
          SizedBox(height: 20),
          ElevatedButton(
            onPressed: () {
              // Perform registration action
            },
            child: Text('Register'),
          ),
        ],
      ),
    );
  }
}
