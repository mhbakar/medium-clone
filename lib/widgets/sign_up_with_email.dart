import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignUpWithEmail extends StatelessWidget {
  const SignUpWithEmail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
        child: Column(
          children: [
            Text(
              'Medium',
              style:
                  GoogleFonts.abrilFatface(fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Sign up with email.',
              style: GoogleFonts.ptSerif(fontSize: 30, color: Colors.white),
            ),
            TextFormField(),
            TextFormField(),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: WidgetStateProperty.all<Color>(Colors.green),
                ),
                onPressed: () {},
                child: Center(
                    child: Text(
                  'Create account',
                  style: TextStyle(color: Colors.white),
                ))),
            Expanded(
              child: Container(
                decoration: BoxDecoration(color: Colors.black),
              ),
            ),
            Text(
              'By signing up,you agree to our Terms of Service and ',
              style: TextStyle(fontSize: 10),
            ),
            Text(
              'acknowledge that our Privacy Policy. applies to you.',
              style: TextStyle(fontSize: 10),
            )
          ],
        ),
      )),
    );
  }
}
