import 'package:flutter/widgets.dart';
import 'package:project1/splashpage.dart';
import 'package:project1/signin/signinpage.dart';

final Map<String, WidgetBuilder>routes={
  SplashPage.routeName:(context)=>SplashPage(),
  SignInPage.routeName:(context)=>SignInPage()
};