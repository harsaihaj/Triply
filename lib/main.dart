import 'package:flutter/material.dart';
import 'package:triply2/view/splashscreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(

        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xff4966F0)),
        //final ColorScheme colorScheme = ColorScheme.fromSeed(seedColor: Color(0xFF4966F0),
        useMaterial3: true,
      ),
      debugShowCheckedModeBanner: false,
      home: Splashscreen(),
    );
  }
}

