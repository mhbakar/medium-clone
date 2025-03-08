import 'package:flutter/material.dart';
import 'package:hostel/screen/sign_in.dart';
import 'package:hostel/screen/sign_up.dart';
import 'package:hostel/screen/welcome_screen.dart';
import 'package:hostel/widgets/sign_in_with_email.dart';
import 'package:hostel/widgets/sign_up_with_email.dart';
import 'package:hostel/widgets/signup_or_signin.dart';

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
        theme: ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: Colors.black,
          // primaryColor: Colors.black
        ),
        home: const WelcomeScreen());
  }
}
