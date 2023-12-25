import 'package:fitness_application/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text(
          "Settings",
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
                title: "Notifications",
                icon: Icon(
                  Icons.check_box,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
              MenuItem(
                title: "Notify me of offers",
                icon: Icon(
                  Icons.check_box_outline_blank,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
              MenuItem(
                title: "Two-step verification",
                icon: Icon(
                  Icons.check_box,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
              SizedBox(
                height: 363,
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                )),
                onPressed: () => Navigator.pushNamed(context, '/language'),
                child: Row(
                  children: [
                    Icon(
                      Icons.language,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Language",
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                )),
                onPressed: () => Navigator.pushNamed(context, '/suggestion'),
                child: Row(
                  children: [
                    Icon(
                      Icons.emoji_people_rounded,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "I have a suggestion",
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              ElevatedButton(
                style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(
                  Colors.black,
                )),
                onPressed: () => Navigator.pushNamed(context, '/changeinfo'),
                child: Row(
                  children: [
                    Icon(
                      Icons.manage_accounts,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      "Change my information",
                      style: GoogleFonts.nunitoSans(
                        textStyle: TextStyle(
                          color: Color.fromARGB(255, 255, 255, 255),
                          fontSize: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
