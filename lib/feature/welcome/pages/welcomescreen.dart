import 'package:flutter/material.dart';
import 'package:whstapclone/feature/welcome/pages/privacyandterms.dart';

class Welcome extends StatelessWidget {
  const Welcome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFF11B21),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 50, vertical: 50),
                child: Image.asset(
                  'assets/images/circle.png',
                  color: Colors.green,
                ),
              )),
              Expanded(
                  child: Column(
                children: [
                  const Text(
                    'Welcome to WhatApp',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  termsandconditions(),
                  ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF00A884),
                          foregroundColor: Color(0XFF11B21),
                          elevation: 0),
                      onPressed: () {},
                      child: const Text(
                        'Agree and Continue',
                        style: TextStyle(color: Colors.black),
                      )),
                      SizedBox(height: 40,),
                  Material(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(20),
                    child: InkWell(
                      onTap: () {},
                      borderRadius: BorderRadius.circular(20),
                      highlightColor: Color(0xFF09141A),
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          SizedBox(height: 20,),
                          Icon(Icons.language, color: Colors.green),
                          Text("Language"),
                          Icon(Icons.keyboard_arrow_down, color: Colors.green)
                        ],
                      ),
                    ),
                  )
                ],
              ))
            ],
          ),
        ));
  }
}
