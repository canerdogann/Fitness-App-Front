import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class SuggestionScreen extends StatelessWidget {
  const SuggestionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.white),
        backgroundColor: Color.fromARGB(255, 0, 0, 0),
        title: Text(
          "I have a suggestion",
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
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Your suggestion:",
                  style: GoogleFonts.nunitoSans(
                    textStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 15,
                    ),
                  ),
                ),
                SizedBox(
                  height: 7,
                ),
                Container(
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.vertical(),
                  ),
                  child: TextField(
                    decoration: InputDecoration(
                      hintText: "Write your suggestion",
                      hintStyle: GoogleFonts.quicksand(
                        textStyle:
                            TextStyle(color: const Color.fromARGB(255, 0, 0, 0)),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                Divider(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                        Colors.white,
                      )),
                      onPressed: () =>
                          Navigator.pushNamed(context, '/suggestion'),
                      child: Row(
                        children: [
                          Icon(
                            Icons.send,
                            color: const Color.fromARGB(255, 0, 0, 0),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            "Send",
                            style: GoogleFonts.nunitoSans(
                              textStyle: TextStyle(
                                color: Color.fromARGB(255, 0, 0, 0),
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
      ),
    );
  }
}
