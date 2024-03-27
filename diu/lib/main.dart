import 'package:diu/Constant/firebase_options.dart';
import 'package:diu/Constant/provider/provider.dart';

import 'package:diu/pages/home_page/Join_Club/join_club.dart';
import 'package:diu/pages/home_page/Join_Club/join_club_copy.dart';
import 'package:diu/willDeleteLater/test.dart';

import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(
    ChangeNotifierProvider(
        create: (context) => TestFileState(), child: MyApp()),
  );
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
        home: JoinClubCopy(),
      ),
    );
  }
}
