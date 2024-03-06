import 'dart:async';

import 'package:flutter/material.dart';

class Splashscreen extends StatefulWidget {
  const Splashscreen({super.key});

  @override
  State<Splashscreen> createState() => _SplashscreenState();
}

class _SplashscreenState extends State<Splashscreen> {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 5), () {
      Navigator.of(context).pushReplacementNamed('/login');
    });
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('asset/img/bg.jpg'), fit: BoxFit.fill)),
            child: Opacity(
              opacity: 0.7,
              child: Container(
                decoration: BoxDecoration(color: Colors.black),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 110),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: ' Red ',
                              style: TextStyle(
                                  color: Colors.green,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'Bricks\n',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 40,
                                  fontWeight: FontWeight.bold),
                            ),
                            TextSpan(
                              text: 'REAl ESTATE',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.w500,
                                   letterSpacing: 4
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
