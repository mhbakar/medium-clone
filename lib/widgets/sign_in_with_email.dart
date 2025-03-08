import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SignInWithEmail extends StatelessWidget {
  const SignInWithEmail({super.key});

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
              'Sign in  with email.',
              style: GoogleFonts.ptSerif(fontSize: 30, color: Colors.white),
            ),
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
                  'Continue',
                  style: TextStyle(color: Colors.white),
                )))
            // Container(
            //   height: 35,
            //   width: 300,
            //   decoration: BoxDecoration(color: CupertinoColors.activeGreen),
            // )
          ],
        ),
      )),
    );
  }
}
