import 'package:diu/pages/home_page/pure_home_page/home_page.dart';
import 'package:diu/auth/login/login.dart';

import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class IsLogin extends StatelessWidget {
  const IsLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return const HomePage();
          } else {
            return LoginPage();
          }
        },
      ),
    );
  }
}
