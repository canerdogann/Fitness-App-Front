import 'package:fitness_application/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ContactScreen extends StatelessWidget {
  const ContactScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text(
          "Contact Information",
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
              Divider(),
              MenuItem(
                title: "Username: Caner",
                icon: Icon(
                  Icons.person,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
              Divider(),
              MenuItem(
                title: "Email: canerdogan444@gmail.com",
                icon: Icon(
                  Icons.mail,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
              Divider(),
              MenuItem(
                title: "URL: https://www.linkedin.com/in/canerdogann/",
                icon: Icon(
                  Icons.link,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
              Divider(),
              MenuItem(
                title: "URL: https://github.com/canerdogann",
                icon: Icon(
                  Icons.link,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
              Divider(),
              MenuItem(
                title: "+90 544 444 44 44",
                icon: Icon(
                  Icons.call,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
              Divider(),
            ],
          ),
        ),
      ),
    );
  }
}
