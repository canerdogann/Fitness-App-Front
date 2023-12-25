import 'package:fitness_application/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              ProfileItem(
                avatar: "assets/images/avatar.jpeg",
                name: "Caner Doğan",
                onTap: () {
                  Navigator.pushNamed(context, "/profile");
                },
              ),
              Divider(),
              MenuItem(
                title: "KG: 70",
                icon: Icon(
                  Icons.monitor_weight,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
              Divider(),
              MenuItem(
                title: "BOY: 1.75",
                icon: Icon(
                  Icons.straighten_outlined,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
              Divider(),
              MenuItem(
                title: "Personal Trainer",
                icon: Icon(
                  Icons.sports_gymnastics_outlined,
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                onTap: () {},
              ),
              Divider(),
              SizedBox(height: 347),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  ElevatedButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                      Colors.black,
                    )),
                    onPressed: () => Navigator.pushNamed(context, '/home'),
                    child: Row(
                      children: [
                        Icon(
                          Icons.undo_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 15,
                        ),
                        Text(
                          "Go Back",
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
            ],
          ),
        ),
      ),
    );
  }
}
