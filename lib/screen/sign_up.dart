import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:hostel/widgets/auth_button_widget.dart';
import 'package:hostel/widgets/sign_up_with_email.dart';

// import 'package:google_fonts/google_fonts.dart';

class SignUp extends StatelessWidget {
  const SignUp({
    super.key,
    required this.onPressed,
  });
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
                      label: 'Sign up with Google',
                      iconPath: "assets/google1.png",
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AuthButtons(
                      label: 'Sign up with Facebook',
                      iconPath: 'assets/facebook.png',
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AuthButtons(
                      label: 'Sign up with Apple',
                      iconPath: "assets/apple-white.png",
                      onPressed: () {},
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    AuthButtons(
                      label: 'Sign up with Email',
                      iconPath: "assets/mail-white.png",
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => SignUpWithEmail()),
                        );
                      },
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Already have an account?'),
                        TextButton(
                            onPressed: onPressed,
                            child: Text(
                              'Sign in',
                              style: TextStyle(color: Colors.green),
                            ))
                      ],
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
