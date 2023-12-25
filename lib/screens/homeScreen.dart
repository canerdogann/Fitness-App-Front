import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(250, 0, 0, 0),
        title: Text(
          "Fitness Support",
          style: GoogleFonts.lobster(
            textStyle: TextStyle(
              fontSize: 20,
              color: Color.fromARGB(255, 255, 255, 255),
            ),
          ),
        ),
      ),
      drawer: Drawer(
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        child: Column(
          children: [
            ProfileItem(
              avatar: "assets/images/avatar.jpeg",
              name: "Caner Doğan",
              onTap: () {
                Navigator.pushNamed(context, "/profile");
              },
            ),
            Expanded(
              child: Column(
                children: [
                  MenuItem(
                    title: "Home Screen",
                    icon: Icon(
                      Icons.home_filled,
                      color: const Color.fromARGB(255, 255, 91, 91),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/home");
                    },
                  ),
                  MenuItem(
                    title: "Workouts Plan",
                    icon: Icon(
                      Icons.fitness_center_outlined,
                      color: const Color.fromARGB(255, 255, 91, 91),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/workouts");
                    },
                  ),
                  MenuItem(
                    title: "Contact Information",
                    icon: Icon(
                      Icons.perm_contact_cal,
                      color: const Color.fromARGB(255, 255, 91, 91),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/contact");
                    },
                  ),
                  MenuItem(
                    title: "Settings",
                    icon: Icon(
                      Icons.settings,
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, "/settings");
                    },
                  ),
                  Divider(),
                  MenuItem(
                    icon: Icon(
                      Icons.logout_outlined,
                      color: Colors.white,
                    ),
                    onTap: () {
                      Navigator.pushNamedAndRemoveUntil(
                          context, "/welcome", (route) => false);
                    },
                    title: "Logout",
                  ),
                  Divider(),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            MenuItem(
              title: "Version 4.4.4",
              icon: Icon(
                Icons.bolt,
                color: Colors.white,
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
      backgroundColor: Colors.black,
      body: SafeArea(
        child: Column(
          children: [
            Header(),
            Expanded(
              flex: 2,
              child: Container(
                width: double.infinity,
                child: ClipRect(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        SearchBox(),
                        Result(
                          "Result",
                          "See more",
                        ),
                        Plan("Sports Nutrition Plan", "See more"),
                        NutritionItem(),
                        Plan("Health and Nutrition", "See more"),
                        ShopItem(),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget NutritionItem() {
    return Container(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CardItem(
                                  "assets/images/beslenme.jpg",
                                  "Monday",
                                  "Breakfast: Oatmeal, milk, various vegetables, omelet",
                                  "Lunch: Meatballs, various vegetables, walnuts",
                                  "Dinner: Grilled chicken, bulgur pilaf, various vegetables"),
                              CardItem(
                                  "assets/images/beslenme.jpg",
                                  "Tuesday",
                                  "Breakfast: Eggs, oatmeal, various vegetables",
                                  "Lunch: Grilled chicken, milk, almonds",
                                  "Dinner: Pasta, grilled steak, various vegetables"),
                              CardItem(
                                  "assets/images/beslenme.jpg",
                                  "Wednesday",
                                  "Breakfast: Sweet potatoes, apples, cheese",
                                  "Lunch: Grilled salmon, various vegetables",
                                  "Dinner: Steak, various vegetables"),
                              CardItem(
                                  "assets/images/beslenme.jpg",
                                  "Thursday",
                                  "Breakfast: Vegetable omelette, milk",
                                  "Lunch: Chicken breast, rice pilaf",
                                  "Dinner: Sauteed meat, pasta, 1 orange"),
                              CardItem(
                                  "assets/images/beslenme.jpg",
                                  "Friday",
                                  "Breakfast: Salad with olive oil, cheese, oats",
                                  "Lunch: Grilled chicken, rice pilaf",
                                  "Dinner: Dark chocolate, grilled meatballs, various vegetables"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
  }

  Widget ShopItem() {
    return Container(
                    child: Column(
                      children: [
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                            children: [
                              CardItem2(
                                  "assets/images/shop.jpg",
                                  "HARDLINE NUTRITION",
                                  "Hardline Pro Gainer",
                                  "Carbohydrate Powder - Chocolate -",
                                  "5Kg",
                                  "46.99 USD"),
                              CardItem2(
                                  "assets/images/shop2.jpeg",
                                  "HARDLINE NUTRITION",
                                  "Hardline Whey 3",
                                  "3 Matrix Protein Powder - Strawberry -",
                                  "2.3 Kg",
                                  "61.99 USD"),
                              CardItem2(
                                  "assets/images/shop3.jpg",
                                  "HARDLINE NUTRITION",
                                  "Hardline BCAA Special for All Athletes ",
                                  " Fusion - Apple -",
                                  "525 Gr",
                                  "19.99 USD"),
                              CardItem2(
                                  "assets/images/shop4.jpeg",
                                  "HARDLINE NUTRITION",
                                  "Hardline Creatine",
                                  "100% Micronized - Unflavored - ",
                                  "300 Gr",
                                  "19.99 USD"),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
  }

  Widget CardItem(
    String image,
    text,
    text2,
    text3,
    text4,
  ) {
    return Card(
      elevation: 40,
      color: const Color.fromARGB(255, 255, 91, 91),
      child: SizedBox(
        width: 250,
        height: 355,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset(
                image,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                text,
                style: GoogleFonts.bebasNeue(
                  textStyle: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 40,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                text2,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                text3,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                text4,
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
                  fontSize: 14,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget CardItem2(
    String image,
    text,
    text2,
    text3,
    text4,
    text5,
  ) {
    return Card(
      elevation: 40,
      color: const Color.fromARGB(255, 255, 91, 91),
      child: SizedBox(
        width: 250,
        height: 480,
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Image.asset(
                image,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                text,
                style: GoogleFonts.bebasNeue(
                  textStyle: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                    fontSize: 30,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                text2,
                style: GoogleFonts.ebGaramond(
                  textStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                text3,
                style: GoogleFonts.ebGaramond(
                  textStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3,
              ),
              Text(
                text4,
                style: GoogleFonts.ebGaramond(
                  textStyle: TextStyle(
                    color: Color.fromARGB(255, 255, 255, 255),
                    fontSize: 20,
                  ),
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(
                height: 3,
              ),
              Container(
                child: ElevatedButton(
                    onPressed: () => 'Null',
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all(
                            const Color.fromARGB(255, 0, 0, 0))),
                    child: Padding(
                      padding: const EdgeInsets.all(4),
                      child: Row(
                        children: [
                          Row(
                            children: [
                              Icon(
                                Icons.shopping_cart,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Text(
                                text5,
                                style: GoogleFonts.rubik(
                                  textStyle: TextStyle(
                                    color: Color.fromARGB(255, 255, 255, 255),
                                    fontSize: 20,
                                  ),
                                ),
                                textAlign: TextAlign.right,
                              ),
                            ],
                          ),
                        ],
                      ),
                    )),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget Header() {
    return Container(
      padding: const EdgeInsets.all(8.0),
      width: double.infinity,
      height: 80,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Hello,Caner!",
                style: TextStyle(
                  color: Color.fromARGB(255, 119, 119, 119),
                  fontSize: 14,
                  // fontWeight: FontWeight.bold
                ),
              ),
              Row(
                children: [
                  Text(
                    "Lets Workout!",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 30,
                      // fontWeight: FontWeight.bold
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget SearchBox() {
    return Container(
      height: 50,
      margin: EdgeInsets.all(12),
      padding: EdgeInsets.symmetric(horizontal: 14.0),
      decoration: BoxDecoration(
        color: Color.fromARGB(190, 48, 48, 48),
        border: Border.all(
          color: const Color.fromARGB(15, 170, 170, 170),
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                Icons.search,
                size: 17,
                color: Colors.grey,
              ),
              SizedBox(
                width: 10,
              ),
              Text(
                "Search",
                style: TextStyle(
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget Result(
    text,
    text2,
  ) =>
      Container(
        child: Column(
          children: [
            TitleItem(
              text,
              text2,
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  SonucItem("2500", "Kcal"),
                  SonucItem2("12", "Hour"),
                  SonucItem3("1450", "Kg"),
                ],
              ),
            ),
          ],
        ),
      );

  Widget Plan(
    text,
    text2,
  ) =>
      Container(
        child: Column(
          children: [
            TitleItem(text, text2),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [],
              ),
            ),
          ],
        ),
      );

  Padding TitleItem(String title, String link) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: TextStyle(
              color: Color.fromARGB(255, 255, 255, 255),
              fontSize: 16,
            ),
          ),
          Text(
            
            link,
            style: TextStyle(
              color: const Color.fromARGB(255, 255, 91, 91),
              fontSize: 14,
            ),
          ),
          
        ],
      ),
    );
  }

  Widget SonucItem(
    String text,
    text2,
  ) {
    return Container(
      padding:
          const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 50, right: 50),
      margin: const EdgeInsets.only(left: 3, right: 3),
      decoration: BoxDecoration(
        color: Color.fromARGB(189, 65, 64, 64),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color.fromARGB(37, 255, 255, 255),
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.local_fire_department,
            color: const Color.fromARGB(255, 255, 91, 91),
          ),
          Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              color: Color.fromARGB(255, 119, 119, 119),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }

  Widget SonucItem2(
    String text,
    text2,
  ) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Container(
          padding:
              const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 60, right: 60),
          margin: const EdgeInsets.only(left: 3, right: 3),
          decoration: BoxDecoration(
            color: Color.fromARGB(189, 65, 64, 64),
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: Color.fromARGB(37, 255, 255, 255),
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.timer,
                color: const Color.fromARGB(255, 255, 91, 91),
              ),
              Text(
                text,
                style: GoogleFonts.rubik(
                  textStyle: TextStyle(
                    color: Colors.white,
                    fontSize: 35,
                  ),
                ),
              ),
              Text(
                text2,
                style: TextStyle(
                  color: Color.fromARGB(255, 119, 119, 119),
                  fontSize: 14,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget SonucItem3(
    String text,
    text2,
  ) {
    return Container(
      padding:
          const EdgeInsets.only(top: 6.0, bottom: 6.0, left: 50, right: 50),
      margin: const EdgeInsets.only(left: 3, right: 3),
      decoration: BoxDecoration(
        color: Color.fromARGB(189, 65, 64, 64),
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: Color.fromARGB(37, 255, 255, 255),
        ),
      ),
      child: Column(
        children: [
          Icon(
            Icons.flag,
            color: const Color.fromARGB(255, 255, 91, 91),
          ),
          Text(
            text,
            style: GoogleFonts.rubik(
              textStyle: TextStyle(
                color: Colors.white,
                fontSize: 35,
              ),
            ),
          ),
          Text(
            text2,
            style: TextStyle(
              color: Color.fromARGB(255, 119, 119, 119),
              fontSize: 14,
            ),
          ),
        ],
      ),
    );
  }
}

class ProfileItem extends StatelessWidget {
  final Function()? onTap;
  final String avatar;
  final String name;

  const ProfileItem({
    super.key,
    this.onTap,
    required this.avatar,
    required this.name,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.all(2),
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: const Color.fromARGB(255, 255, 91, 91),
              ),
              child: Container(
                padding: EdgeInsets.all(2),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Color.fromARGB(143, 255, 255, 255),
                ),
                child: CircleAvatar(
                  backgroundImage: AssetImage(avatar),
                  radius: 40,
                ),
              ),
            ),
            SizedBox(
              width: 8,
            ),
            Text(
              name,
              style: TextStyle(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final Function()? onTap;
  final String title;
  final Icon icon;

  const MenuItem({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            icon,
            SizedBox(width: 3),
            Text(
              title,
              style: GoogleFonts.playfairDisplay(
                textStyle: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
