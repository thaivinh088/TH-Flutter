import 'package:flutter/material.dart';
import 'package:project1/splashpage.dart';
import 'package:project1/signin/signinpage.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Project1',
      debugShowCheckedModeBanner: false,
      initialRoute: SplashPage.routeName,
      routes: {
        SplashPage.routeName: (context) => SplashPage(),
        SignInPage.routeName: (context) => SignInPage(),
      },
    );
  }
}
