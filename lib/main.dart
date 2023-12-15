import 'package:flutter/material.dart';
// import 'package:flutter_30_day/pages/home.dart';
import 'package:flutter_30_day/pages/LogingPage.dart';
import 'package:flutter_30_day/pages/home.dart';
import 'package:flutter_30_day/utils/routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
    //  home: HomePage(),
    
      // themeMode: ThemeMode.dark,


      
      theme: ThemeData(
        // brightness: Brightness.dark,
        primarySwatch: Colors.deepPurple,
        fontFamily: GoogleFonts.lato().fontFamily,
        primaryTextTheme: GoogleFonts.latoTextTheme( )
      ),
      initialRoute: "/",
        routes:{
          "/":(contezext) => LogingPage(),
          MyRouts.homeRouts:(context) => HomePage(),

          
        } ,
    );
  }
}
