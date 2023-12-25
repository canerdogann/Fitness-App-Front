import 'package:fitness_application/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text(
          "Language",
          style: GoogleFonts.lobster(
            textStyle: TextStyle(
              fontSize: 25,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              MenuItem(
                title: "English",
                icon: Icon(
                  Icons.check_box,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
              MenuItem(
                title: "Turkhish",
                icon: Icon(
                  Icons.check_box_outline_blank,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
              MenuItem(
                title: "German",
                icon: Icon(
                  Icons.check_box_outline_blank,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
          ],
        ),
        ),
      ),
    );
  }
}