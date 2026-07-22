import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constants.dart';

class Footer extends StatelessWidget {
  const Footer({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          style: const TextStyle(
            color: AppColors.footer,
            fontSize: 12.5,
            height: 1.55,
            fontWeight: FontWeight.w400,
          ),
          children: [
            const TextSpan(
              text:
                  "By continuing, you agree to our ",
            ),
            TextSpan(
              text: "Terms of Service",
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // TODO: Open Terms of Service
                },
            ),
            const TextSpan(
              text: " and ",
            ),
            TextSpan(
              text: "Privacy Policy",
              style: const TextStyle(
                color: Colors.black87,
                fontWeight: FontWeight.w600,
              ),
              recognizer: TapGestureRecognizer()
                ..onTap = () {
                  // TODO: Open Privacy Policy
                },
            ),
            const TextSpan(
              text: ".",
            ),
          ],
        ),
      ),
    );
  }
}