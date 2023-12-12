import 'package:flutter/material.dart';
import 'package:flutter_30_day/pages/home.dart';
import 'package:flutter_30_day/pages/LogingPage.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
    //  home: HomePage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme( )
      ),
        routes:{
          "/":(context) => const LogingPage(),
          "/login":(context) => LogingPage(),
        } ,
    );
  }
}
