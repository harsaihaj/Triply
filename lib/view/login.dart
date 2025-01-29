import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:glitcheffect/glitcheffect.dart';
import 'package:google_fonts/google_fonts.dart';
class loginScreen extends StatelessWidget {
  const loginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Welcome To"),
            Text("TRIPLY", style: GoogleFonts.dmSerifText(
                textStyle: TextStyle(fontSize: 70, fontWeight: FontWeight.w500, color: Color(0xff4966F0))
            ),),

          SizedBox(height: 30,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),

            child: TextField(
              decoration: InputDecoration(
                icon: Icon(Icons.alternate_email_rounded),
                labelText: 'Thapar Mail ID',
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.black38),

                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(20),
                  borderSide: const BorderSide(color: Colors.black38),
                )
              ),
            ),
          ),
          SizedBox(height: 20,),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 30),
            child: TextField(
              decoration: InputDecoration(
                  icon: Icon(Icons.lock_open_rounded),
                  labelText: 'Password',
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.black38),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: const BorderSide(color: Colors.black38),
                  )
              ),
            ),
          ),
          SizedBox(height: 30,),
          Container(
            width: MediaQuery.sizeOf(context).width/2,
            height: MediaQuery.sizeOf(context).width/8,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xff4966F0),
                // Text color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12), // Rounded corners
                ),
              ),
              child: Text("Login", style: TextStyle(fontSize: 15,color: Colors.white, ),),
            ),
          )          ],
      ),
    ),
    );
  }
}
