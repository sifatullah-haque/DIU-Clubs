import 'package:diu/pages/login/login_page.dart';
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
              title: 'Material App',
              home: LoginPage(),
            ));
  }
}
