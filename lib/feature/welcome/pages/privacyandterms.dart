
import 'package:flutter/material.dart';

class termsandconditions extends StatelessWidget {
  const termsandconditions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: 40, vertical: 50),
      child: RichText(
          textAlign: TextAlign.center,
          text: const TextSpan(
              text: "Read Our",
              style: TextStyle(color: Colors.grey, height: 1.5),
              children: [
                TextSpan(
                    text: ' Privacy Policy ',
                    style: TextStyle(
                        height: 1.5, color: Colors.blue)),
                TextSpan(
                  text: 'Tap "Agree and Continue" to accept the ',
                  style:
                      TextStyle(color: Colors.grey, height: 1.5),
                ),
                TextSpan(
                  text: ' Terms Of Service ',
                  style:
                      TextStyle(color: Colors.blue, height: 1.5),
                )
              ])),
    );
  }
}
