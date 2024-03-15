import 'package:diu/Constant/firebase_options.dart';
import 'package:diu/auth/login/isLogin.dart';
import 'package:diu/auth/login/login.dart';
import 'package:diu/auth/register/register.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

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
              home: RegisterPage(),
            ));
  }
}
