// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class IntroPage extends StatefulWidget {
  const IntroPage({Key? key}) : super(key: key);

  @override
  _IntroPageState createState() => _IntroPageState();
}

class _IntroPageState extends State<IntroPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      body: Stack(
        children: [
          // coffee picture
          Container(
            height: 580,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('lib/coffees/coffee6.webp'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(height: 100),

          // text -> coffee so good
          Padding(
            padding: const EdgeInsets.only(
              left: 18,
              bottom: 40,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Coffee so good, your taste buds will love it.',
                  textAlign: TextAlign.center,
                  style: GoogleFonts.poppins(fontSize: 45),
                ),

                SizedBox(height: 10),

                // text -> the best grain
                Center(
                  child: Text(
                    'The best grains, finest roast, the \n powerful flavor',
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey[600], fontSize: 15),
                  ),
                ),

                SizedBox(height: 15),

                // Get started button
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Container(
                    height: 60,
                    decoration: BoxDecoration(
                      color: Colors.orange[800],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Center(child: Text('Get Started')),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
