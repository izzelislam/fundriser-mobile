import 'package:flutter/material.dart';
import 'package:fundriser/shared/theme.dart';
import 'package:fundriser/ui/pages/donation_page.dart';
import 'package:fundriser/ui/pages/donor.dart';
import 'package:fundriser/ui/pages/donor_code.dart';
import 'package:fundriser/ui/pages/donor_form.dart';
import 'package:fundriser/ui/pages/home_page.dart';
import 'package:fundriser/ui/pages/login_page.dart';
import 'package:fundriser/ui/pages/splash_page.dart';
import 'package:fundriser/ui/pages/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        scaffoldBackgroundColor: whiteColor,
        appBarTheme: AppBarTheme(
          backgroundColor: thinGreenColor,
          elevation: 0,
          centerTitle: true,
          titleTextStyle: greenTextStyle.copyWith(
            fontSize: 20,
            fontWeight: FontWeight.w900
          ),
          iconTheme: IconThemeData(
            color: greenColor
          )
        )
      ),
      routes: {
        "/"        :(context) => SplashPage(),
        "/welcome" :(context) => WelcomePage(),
        "/login"   :(context) => LoginPage(),
        "/home"    :(context) => HomePage(),
        "/donor_code"    :(context) => DonorCodePage(),
        "/donor"    :(context) => DonorPage(),
        "/donation"    :(context) => DonationPage(),
        "/donor_form" :(context) => DonorFormPage()
      },
    );
  }
}