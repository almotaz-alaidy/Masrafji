import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:masrafje/screens/contactus.dart';
import 'package:masrafje/screens/intro%20page.dart';
import 'package:masrafje/screens/membership.dart';
import 'package:masrafje/screens/sign.dart';

import 'screens/rigistraion.dart';
import 'screens/signup.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(
      fontFamily: "Changa-VariableFont_wght",
    ),
    debugShowCheckedModeBanner: false,
    home: MyApp(),
    routes: {
      "signUp": (context) => SignUp(),
      "signIn": (context) => SignIn(),
      "contactUs": (context) => Contact_us(),
      "rigistraion": (context) => Registrationcomplete(),
      "membership": (context) => Membership(),
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splashIconSize: 100,
      centered: true,
      animationDuration: Duration(seconds: 1),
      duration: 3000,
      splash: Column(
        children: [
          Image(height: 80, image: AssetImage("images/wallet.png")),
          Text(
            "MASRAFJI",
            style: TextStyle(fontSize: 15),
          )
        ],
      ),
      nextScreen: IntroPage(),
      splashTransition: SplashTransition.fadeTransition,
    );
  }
}
