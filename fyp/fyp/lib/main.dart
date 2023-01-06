import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:fyp/login.dart';
import 'package:fyp/signup.dart';
import 'package:fyp/stats.dart';
import 'package:fyp/welcome.dart';
import 'package:fyp/babyprofile.dart';
import 'package:fyp/cryanalysis.dart';
import 'package:fyp/analysecry.dart';
import 'package:fyp/feedback.dart';
import 'package:fyp/givefeedback.dart';


void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    initialRoute: 'splash',
    routes: {
      'splash': (context) => AnimatedSplashScreen(
          splash:
          Column(
            children:[
              Image.asset('assets/logo.png',
              height:310,
              width:310,),
            ],),
           backgroundColor: Colors.white , nextScreen: LoginPage(),
          splashIconSize: 315,
  duration:2000,
          splashTransition: SplashTransition.scaleTransition,),

      'login': (context) => LoginPage(),
      'welcome': (context) => WelcomePage(),
      'signup': (context) => const SignupPage(),
      'babyprofile': (context) => const BabyProfilePage(),
      'cryanalysis': (context) => const CryAnalysisPage(),
      'analysecry': (context) => const AnalysecryPage(),
      'stats': (context) => const StatsPage(),
      'feedback': (context) => const FeedbackPage(),
      'givefeedback': (context) => const GivefeedbackPage()
    },
  ));
}

