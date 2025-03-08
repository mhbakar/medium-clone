import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hostel/widgets/sign_in_with_email.dart';
import 'package:hostel/widgets/auth_button_widget.dart';

// import 'package:google_fonts/google_fonts.dart';

class SignIn extends StatelessWidget {
  const SignIn({super.key, required this.onPressed});

  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: SingleChildScrollView(
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 40.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Medium',
                style:
                    GoogleFonts.abrilFatface(fontSize: 20, color: Colors.white),
              ),
              Text(
                'Human',
                style: GoogleFonts.ptSerif(fontSize: 50, color: Colors.white),
              ),
              Text(
                'stories and',
                style: GoogleFonts.ptSerif(fontSize: 50, color: Colors.white),
              ),
              Text(
                'ideas.',
                style: GoogleFonts.ptSerif(fontSize: 50, color: Colors.white),
              ),
              Text('Discover prespective that deepen '),
              Text('understanding'),
              Padding(
                padding: const EdgeInsets.only(
                  top: 30,
                ),
                child: Column(
                  children: [
                    AuthButtons(
                      label: 'Sign in  with Google',
                      iconPath: "assets/google1.png",
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AuthButtons(
                      label: 'Sign in with Facebook',
                      iconPath: 'assets/facebook.png',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AuthButtons(
                      label: 'Sign in with Apple',
                      iconPath: "assets/apple-white.png",
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AuthButtons(
                      label: 'Sign in with X',
                      iconPath: "assets/twitter-white.png",
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AuthButtons(
                      label: 'Sign in with Email',
                      iconPath: "assets/mail-white.png",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignInWithEmail()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Don't have an account?"),
                        TextButton(
                            onPressed: onPressed,
                            child: Text(
                              'Sign up',
                              style: TextStyle(color: Colors.green),
                            ))
                      ],
                    ),
                    SizedBox(
                      height: 60,
                    ),
                    Text('Forget email or trouble signingin?Get help'),
                    SizedBox(
                      height: 40,
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
              )
            ],
          ),
        ),
      ),
    )));
  }
}
