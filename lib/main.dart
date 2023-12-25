import 'package:fitness_application/screens/changeinfoScreen.dart';
import 'package:fitness_application/screens/contactScreen.dart';
import 'package:fitness_application/screens/homeScreen.dart';
import 'package:fitness_application/screens/languageScreen.dart';
import 'package:fitness_application/screens/loginScreen.dart';
import 'package:fitness_application/screens/profileScreen.dart';
import 'package:fitness_application/screens/registerScreen.dart';
import 'package:fitness_application/screens/settingScreen.dart';
import 'package:fitness_application/screens/suggestionScreen.dart';
import 'package:fitness_application/screens/welcomeScreen.dart';
import 'package:fitness_application/screens/workoutsScreen.dart';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      routes: {
        '/home': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/register': (context) => RegisterScreen(),
        '/profile': (context) => ProfileScreen(),
        '/welcome': (context) => WelcomeScreen(),
        '/settings': (context) => SettingScreen(),
        '/language': (context) => LanguageScreen(),
        '/suggestion': (context) => SuggestionScreen(),
        '/changeinfo': (context) => ChangeinfoScreen(),
        '/contact': (context) => ContactScreen(),
        '/workouts': (context) => WorkoutsScreen(),
      },
      initialRoute: '/welcome',
    );
  }
}
