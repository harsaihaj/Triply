import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:triply2/view/signup.dart';
import 'package:triply2/view/search.dart';

class loginScreen extends StatefulWidget {
  const loginScreen({super.key});

  @override
  _loginScreenState createState() => _loginScreenState();
}

class _loginScreenState extends State<loginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Center(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text("Welcome To"),
                Text(
                  "TRIPLY",
                  style: GoogleFonts.dmSerifText(
                    textStyle: const TextStyle(
                      fontSize: 70,
                      fontWeight: FontWeight.w500,
                      color: Color(0xff4966F0),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.alternate_email_rounded),
                      labelText: 'Thapar Mail ID',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black38),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black38),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                Container(
                  margin: const EdgeInsets.symmetric(horizontal: 30),
                  child: TextField(
                    decoration: InputDecoration(
                      icon: const Icon(Icons.lock_open_rounded),
                      labelText: 'Password',
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black38),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20),
                        borderSide: const BorderSide(color: Colors.black38),
                      ),
                    ),
                  ),
                ),
                const SizedBox(height: 30),
                SizedBox(
                  width: MediaQuery.sizeOf(context).width / 2,
                  height: MediaQuery.sizeOf(context).width / 8,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                searchScreen()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xff4966F0),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    child: const Text(
                      "Login",
                      style: TextStyle(fontSize: 15, color: Colors.white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 40,
            left: 0,
            right: 0,
            child: Center(
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text("Don't Have an Account?"),
                  TextButton(
                    onPressed: () {
                      // Navigate to the SignUp screen when button is pressed
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                signupScreen()), // Ensure this is the correct screen name
                      );
                    },
                    child: Text("Register Here"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
