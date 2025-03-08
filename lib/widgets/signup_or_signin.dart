import 'package:flutter/material.dart';
import 'package:hostel/screen/sign_in.dart';
import 'package:hostel/screen/sign_up.dart';

class SignupOrSignin extends StatefulWidget {
  const SignupOrSignin({super.key});

  @override
  State<SignupOrSignin> createState() => _SignupOrSigninState();
}

class _SignupOrSigninState extends State<SignupOrSignin> {
  bool showlogin = true;
  void togglePages() {
    setState(() {
      showlogin = !showlogin;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (showlogin) {
      return SignIn(onPressed: togglePages);
    } else {
      return SignUp(
        onPressed: togglePages,
      );
    }
  }
}
