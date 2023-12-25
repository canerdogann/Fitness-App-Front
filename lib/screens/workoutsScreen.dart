import 'package:fitness_application/screens/homeScreen.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class WorkoutsScreen extends StatelessWidget {
  const WorkoutsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text(
          "Workouts Plan",
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
          child: SingleChildScrollView(
            child: Column(
              children: [
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                Image.asset("assets/images/gogusantrenmani.jpg",
                    cacheHeight: 350, cacheWidth: 550),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                SizedBox(height: 3),
                TextItem("Monday"),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                TextItem2("Chest Exercises"),
                MenuItem(
                  title: "Incline Bench Press",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                MenuItem(
                  title: "Incline Dumbell Press",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                MenuItem(
                  title: "Crossover",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                MenuItem(
                  title: "Dips",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                Image.asset("assets/images/omuzantrenmanı.jpg",
                    cacheHeight: 350, cacheWidth: 550),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                SizedBox(height: 3),
                TextItem("Tuesday"),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                TextItem2("Shoulder Exercises"),
                MenuItem(
                  title: "Over Head Press",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                MenuItem(
                  title: "Lateral Raise",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                MenuItem(
                  title: "Reverse Fly",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                Image.asset("assets/images/sırtantrenmanı.jpg",
                    cacheHeight: 350, cacheWidth: 550),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                SizedBox(height: 3),
                TextItem("Wednesday"),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                TextItem2("Back Exercises"),
                MenuItem(
                  title: "Seated Row",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                MenuItem(
                  title: "Barbel Row",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                MenuItem(
                  title: "Lat Pulldown",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                MenuItem(
                  title: "One Hand Lat Pulldown",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                Image.asset("assets/images/kolantrenmanı.jpg",
                    cacheHeight: 350, cacheWidth: 550),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                SizedBox(height: 3),
                TextItem("Thursday"),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                TextItem2("Arm Exercises"),
                MenuItem(
                  title: "Dumbell Curls",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                MenuItem(
                  title: "Hammer Curls",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                MenuItem(
                  title: "Scout Curl",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                Image.asset("assets/images/arkakolantrenmanı.jpg",
                    cacheHeight: 350, cacheWidth: 550),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                SizedBox(height: 3),
                TextItem("Friday"),
                Divider(
                  color: const Color.fromARGB(255, 255, 91, 91),
                ),
                TextItem2("triceps exercises"),
                MenuItem(
                  title: "Triceps Pushdown",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
                MenuItem(
                  title: "Skullcrusher",
                  icon: Icon(
                    Icons.circle,
                    color: const Color.fromARGB(255, 255, 91, 91),
                  ),
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget TextItem(
    String text,
  ) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          text,
          style: GoogleFonts.archivoBlack(
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 30,
            ),
          ),
        ),
      ],
    );
  }
}

Widget TextItem2(
  String text,
) {
  return Column(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    mainAxisSize: MainAxisSize.min,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Text(
        text,
        style: GoogleFonts.bebasNeue(
          textStyle: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
      ),
    ],
  );
}
