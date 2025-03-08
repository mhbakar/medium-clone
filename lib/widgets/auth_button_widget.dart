import 'package:flutter/material.dart';

class AuthButtons extends StatelessWidget {
  const AuthButtons(
      {super.key,
      required this.label,
      required this.iconPath,
      this.spacing = 40,
      required this.onPressed});

  final String label;
  final String iconPath;
  final double spacing;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: ElevatedButton.icon(
          onPressed: onPressed,
          icon: Image(image: AssetImage(iconPath)),
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all<Color>(Colors.black),
            foregroundColor: WidgetStateProperty.all<Color>(Colors.white),
            side: WidgetStateProperty.all<BorderSide>(
                BorderSide(color: Colors.white)),
            // padding: WidgetStateProperty.all<EdgeInsets>(
            //   EdgeInsets.symmetric(horizontal: 20, vertical: 12),
            // ),
            // iconSize: WidgetStateProperty.all<double>(24 + spacing),
          ),
          label: Center(
            child: Text(label),
          )),
    );
  }
}
