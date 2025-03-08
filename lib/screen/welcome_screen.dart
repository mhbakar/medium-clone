import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // 🔥 Step 1: List of Local Images
    List<String> profileImages = [
      'images/pexels1.jpg',
      'images/pexels2.jpg',
      'images/pexels3.jpg',
      'images/pexels4.jpg',
      'images/pexels5.jpg',
      'images/pexels6.jpg',
      'images/pexels7.jpg',
      'images/pexels8.jpg',
      'images/pexels9.jpg',
      'images/pexels10.jpg',
      'images/pexels11.jpg',
      'images/pexels12.jpg',
    ];

    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Welcome black',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.bold)),
            const SizedBox(height: 80),

            Text('Welcome to',
                style: GoogleFonts.ptSerif(fontSize: 40, color: Colors.white)),
            Text('your new',
                style: GoogleFonts.ptSerif(fontSize: 40, color: Colors.white)),
            const SizedBox(height: 10),
            Text('experience.',
                style: GoogleFonts.ptSerif(fontSize: 40, color: Colors.white)),
            const SizedBox(height: 10),
            Text("we've updated .",
                textAlign: TextAlign.center,
                style: TextStyle(color: Colors.grey[600])),

            const SizedBox(height: 20),

            // 🔥 Step 2: Display Images in Circles

            Wrap(
              spacing: 15,
              runSpacing: 15,

              alignment: WrapAlignment.center,
              children: profileImages
                  .map((imagePath) => CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage(imagePath),
                      ))
                  .toList(), // ✅ Convert to List of Widgets
            ),

            const SizedBox(height: 40),

            // 🔥 Continue Button
            ElevatedButton(
              onPressed: () {
                print("Continue Pressed");
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
              ),
              child: const Text(
                "Continue",
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
